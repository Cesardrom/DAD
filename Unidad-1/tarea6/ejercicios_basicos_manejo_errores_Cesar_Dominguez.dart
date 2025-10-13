import 'dart:async';

class DivisionByZeroException implements Exception {
  @override
  String toString() => '🚫 División prohibida';
}

void main() {
  // Ejercicio 1: División por cero
  print('----- Ejercicio 1: División por cero -----');
  void divide(int a, int b) {
    if (b == 0) {
      throw Exception('División por cero');
    }
    print('Resultado: ${a / b}');
  }

  try {
    divide(10, 0);
  } catch (e) {
    print('Error: división por cero');
  }
  print('');

  // Ejercicio 2: Índice fuera de rango
  print('----- Ejercicio 2: Índice fuera de rango -----');
  var list = [1, 2, 3];

  try {
    print(list[5]);
  } on RangeError catch (e) {
    print('Error: índice fuera de rango');
  }
  print('');

  // Ejercicio 3: Formato inválido
  print('----- Ejercicio 3: Formato inválido -----');
  try {
    var number = int.parse("abc");
    print('Número parseado: $number');
  } on FormatException catch (e) {
    print('Error: entrada inválida');
  }
  print('');

  // Ejercicio 4: Uso de finally
  print('----- Ejercicio 4: Uso de finally -----');
  void openFile() {
    print('📂 Archivo abierto');
    throw Exception('Error al leer archivo');
  }

  try {
    openFile();
  } catch (e) {
    print('Se produjo un error: $e');
  } finally {
    print('📕 Archivo cerrado');
  }
  print('');

  // Ejercicio 5: Excepción personalizada
  print('----- Ejercicio 5: Excepción personalizada -----');

  void divideCustom(int a, int b) {
    if (b == 0) {
      throw DivisionByZeroException();
    }
    print('Resultado: ${a / b}');
  }

  try {
    divideCustom(8, 0);
  } on DivisionByZeroException catch (e) {
    print(e);
  }
  print('');

  // Ejercicio 6: Async y manejo de errores
  print('----- Ejercicio 6: Async y manejo de errores -----');

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 1));
    // Simular fallo de conexión
    throw Exception('Fallo de conexión');
  }

  () async {
    try {
      await loadData();
    } catch (e) {
      print('Error: no se pudieron cargar los datos');
    }
  }();

  print('');
}
