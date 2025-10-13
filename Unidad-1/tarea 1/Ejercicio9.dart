void main() {
  Function multiplicador(int factor) {
    return (int numero) => numero * factor;
  }

  var porTres = multiplicador(3);
  print(porTres(5)); 
}
