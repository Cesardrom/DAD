import 'dart:io';

Future<void> main() async {
  final file = File('datos.txt');

  try {
    String contenido = await file.readAsString();
    print(contenido);
  } catch (e) {
    print('Error al leer el archivo: $e');
  }
}