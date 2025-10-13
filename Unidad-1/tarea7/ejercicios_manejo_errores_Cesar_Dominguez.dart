import 'dart:math';
import 'dart:async';

/// Excepción personalizada para el ejercicio 2.
class ElementoNoEnteroException implements Exception {
  final dynamic elementoInvalido;
  final String mensaje;

  ElementoNoEnteroException(this.elementoInvalido, {this.mensaje = "Se encontró un elemento que no es un entero."});

  @override
  String toString() => 'ElementoNoEnteroException: $mensaje Elemento problemático: $elementoInvalido';
}

// ----- 1. Conversor de números con validación -----
int toIntSeguro(String valor) {
  try {
    return int.parse(valor);
  } on FormatException {
    throw FormatException("Valor inválido: '$valor'");
  }
}

// ----- 2. Suma de lista segura -----
int sumarLista(List<dynamic> datos) {
  int sumaTotal = 0;
  for (var elemento in datos) {
    if (elemento is int) {
      sumaTotal += elemento;
    } else {
      throw ElementoNoEnteroException(elemento, mensaje: "Se encontró un elemento no entero en la lista.");
    }
  }
  return sumaTotal;
}

// ----- 3. Multiplicación con dos tipos de errores -----
int multiplicar(int? a, int? b) {
  if (a == null || b == null) {
    throw ArgumentError("Ambos números no pueden ser nulos para la multiplicación.");
  }
  if (a < 0 || b < 0) {
    throw Exception("Ambos números deben ser positivos o cero para la multiplicación.");
  }
  return a * b;
}

// ----- 4. Reintentos en conexión simulada -----
final Random _generadorAleatorio = Random();
Future<void> conectar() async {
  const int maxIntentos = 3;
  for (int intento = 1; intento <= maxIntentos; intento++) {
    print("Intentando conectar... (Intento $intento de $maxIntentos)");
    try {
      if (_generadorAleatorio.nextDouble() < 0.7) {
        throw Exception("Fallo de red simulado.");
      }
      print("Conexión exitosa en el intento $intento.");
      return;
    } on Exception catch (e) {
      print("Error en el intento $intento: ${e.toString()}");
      if (intento == maxIntentos) {
        throw Exception("Conexión fallida tras $maxIntentos intentos.");
      }
      await Future.delayed(Duration(milliseconds: 500));
    }
  }
}

// ----- 5. Cargar datos con .catchError() -----
Future<String> cargarArchivo(String nombreArchivo) {
  if (nombreArchivo == "config.txt") {
    return Future.value("Archivo '$nombreArchivo' cargado exitosamente.");
  } else {
    return Future.error("Error: Archivo '$nombreArchivo' no encontrado.");
  }
}

void main() async {
  print("----- 1. Conversor de números con validación -----");
  List<String> valoresNumericos = ["123", "abc", "45"];
  for (var valor in valoresNumericos) {
    try {
      int numero = toIntSeguro(valor);
      print("'$valor' convertido a entero: $numero");
    } on FormatException catch (e) {
      print("Error al convertir '$valor': ${e.message}");
    }
  }
  print("\n");

  print("----- 2. Suma de lista segura -----");
  List<dynamic> listaNumerosMixta = [10, 20, "hola", 5];
  List<dynamic> listaSoloNumeros = [1, 2, 3];

  try {
    int resultadoSuma = sumarLista(listaNumerosMixta);
    print("Suma de la lista mixta: $resultadoSuma");
  } on ElementoNoEnteroException catch (e) {
    print("Error al sumar la lista: ${e.mensaje} (Elemento problemático: ${e.elementoInvalido})");
  }

  try {
    int resultadoSuma = sumarLista(listaSoloNumeros);
    print("Suma de la lista de solo números: $resultadoSuma");
  } on ElementoNoEnteroException catch (e) {
    print("Error al sumar la lista: ${e.mensaje} (Este mensaje no debería aparecer)");
  }
  print("\n");

  print("----- 3. Multiplicación con dos tipos de errores -----");
  try {
    int resultado = multiplicar(null, 5);
    print("Resultado de la multiplicación: $resultado");
  } on ArgumentError catch (e) {
    print("Error de argumento (null): ${e.message}");
  } catch (e) {
    print("Error inesperado: $e");
  }

  // Caso 2: Argumento negativo
  try {
    int resultado = multiplicar(2, -3);
    print("Resultado de la multiplicación: $resultado");
  } on ArgumentError catch (e) {
    print("Error de argumento (negativo): ${e.message}");
  } catch (e) {
    print("Error de multiplicación (negativo): $e");
  }

  // Caso 3: Ambos válidos
  try {
    int resultado = multiplicar(4, 5);
    print("Resultado de la multiplicación (4 * 5): $resultado");
  } on ArgumentError catch (e) {
    print("Error de argumento (válido): ${e.message}");
  } catch (e) {
    print("Error de multiplicación (válido): $e");
  }
  print("\n");

  print("----- 4. Reintentos en conexión simulada -----");
  try {
    await conectar();
    print("¡Conexión finalizada con éxito (o con un error capturado)! Si el error fue retornado, debería aparecer en el catch principal.");
  } on Exception catch (e) {
    print("Manejo de error final de conexión en main: $e");
  }
  print("\n");

  print("----- 5. Cargar datos con .catchError() -----");
  print("Intentando cargar 'datos.txt' (esperado error):");
  await cargarArchivo("datos.txt").then((contenido) {
    print(contenido);
  }).catchError((error) {
    print("Manejo de error con .catchError(): $error");
  });

  print("\nIntentando cargar 'config.txt' (esperado éxito):");
  await cargarArchivo("config.txt").then((contenido) {
    print(contenido);
  }).catchError((error) {
    print("Manejo de error con .catchError(): $error"); 
  });
  print("\n");
}