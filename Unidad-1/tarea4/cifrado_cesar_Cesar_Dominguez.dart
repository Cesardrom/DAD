void main() {
  String mensajeCifrado = 'Zlqjduglxp#Ohylrvd';
  List<int> codigos = mensajeCifrado.codeUnits;
  List<int> codigosDecodificados = codigos.map((codigo) {
    return codigo - 3;
  }).toList();
  String mensajeDecodificado = String.fromCharCodes(codigosDecodificados);

  print(mensajeDecodificado);
}