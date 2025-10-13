void main() {
  // Define operations
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
  double division(double a, double b) => a / b;

  // Function operar
  double operar(double a, double b, double Function(double, double) operacion) {
    return operacion(a, b);
  }

  // Usage
  print(operar(5, 3, suma)); 
  print(operar(5, 3, resta)); 
  print(operar(5, 3, multiplicacion)); 
  print(operar(5, 3, division));
}
