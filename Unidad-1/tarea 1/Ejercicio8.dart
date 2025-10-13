void main() {
  List<int> cuadrados(int number) => List.generate(number, (int index) => (index + 1) * (index + 1));

  print(cuadrados(5));
}


