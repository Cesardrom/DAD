// Ejercicio 1: con getter
class Temperatura {
  double celsius;

  Temperatura(this.celsius);

  double get fahrenheit => celsius * 9 / 5 + 32;
}

// Ejercicio 2: con setter
class Contrasena {
  String _valor = '';

  set valor(String password) {
    if (password.length >= 8) {
      _valor = password;
      print('Contraseña válida.');
    } else {
      print('La contraseña debe tener al menos 8 caracteres.');
    }
  }

  String get valor => _valor;
}

// Ejercicio 3: extends
class Empleado {
  String nombre;

  Empleado(this.nombre);

  void trabajar() {
    print('$nombre está trabajando.');
  }
}

class Programador extends Empleado {
  Programador(String nombre) : super(nombre);

  @override
  void trabajar() {
    print('Estoy programando en Dart.');
  }
}

// Ejercicio 4: clase abstracta
abstract class InstrumentoMusical {
  void tocar();
}

class Guitarra extends InstrumentoMusical {
  @override
  void tocar() {
    print('Tocando la guitarra.');
  }
}

class Piano extends InstrumentoMusical {
  @override
  void tocar() {
    print('Tocando el piano.');
  }
}

// Ejercicio 5: interfaz
abstract class Exportable {
  void exportar();
}

class DocumentoPDF implements Exportable {
  @override
  void exportar() {
    print('Exportando documento en PDF.');
  }
}

class ImagenPNG implements Exportable {
  @override
  void exportar() {
    print('Exportando imagen en PNG.');
  }
}

// Ejercicio 6: mixin
mixin Recargable {
  void recargar() {
    print('Recargando...');
  }
}

class Telefono with Recargable {
  void usar() {
    print('Usando teléfono.');
  }
}

class Linterna with Recargable {
  void encender() {
    print('Encendiendo linterna.');
  }
}

// Ejercicio 7: clase const
class ColorRGB {
  final int r;
  final int g;
  final int b;

  const ColorRGB(this.r, this.g, this.b);
}

void main() {
  // Ejercicio 1: con getter
  print('--- Ejercicio 1: Getter ---');
  var temp1 = Temperatura(0);
  var temp2 = Temperatura(25);
  var temp3 = Temperatura(100);
  print('Temperatura en Celsius: ${temp1.celsius}, Fahrenheit: ${temp1.fahrenheit}');
  print('Temperatura en Celsius: ${temp2.celsius}, Fahrenheit: ${temp2.fahrenheit}');
  print('Temperatura en Celsius: ${temp3.celsius}, Fahrenheit: ${temp3.fahrenheit}');
  
  print('\n--- Ejercicio 2: Setter ---');
  // Ejercicio 2: con setter
  var miContrasena = Contrasena();
  miContrasena.valor = '1234567'; 
  miContrasena.valor = '12345678'; 
  print('Contraseña almacenada: ${miContrasena.valor}');
  
  print('\n--- Ejercicio 3: extends ---');
  // Ejercicio 3: con extends
  var programador = Programador('Juan');
  programador.trabajar();
  
  print('\n--- Ejercicio 4: clase abstracta ---');
  // Ejercicio 4: clase abstracta
  List<InstrumentoMusical> instrumentos = [Guitarra(), Piano()];
  for (var instrumento in instrumentos) {
    instrumento.tocar();
  }
  
  print('\n--- Ejercicio 5: interfaz ---');
  // Ejercicio 5: interfaz
  List<Exportable> elementos = [DocumentoPDF(), ImagenPNG()];
  for (var elemento in elementos) {
    elemento.exportar();
  }
  
  print('\n--- Ejercicio 6: mixin ---');
  // Ejercicio 6: mixin
  var telefono = Telefono();
  var linterna = Linterna();
  telefono.recargar();
  linterna.recargar();
  
  print('\n--- Ejercicio 7: clase const ---');
  // Ejercicio 7: clase const
  const color1 = ColorRGB(255, 0, 0);
  const color2 = ColorRGB(255, 0, 0);
  print('¿Son idénticos? ${identical(color1, color2)}');
}

