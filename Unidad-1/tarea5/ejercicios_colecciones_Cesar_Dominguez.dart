import 'dart:collection';

void main() {
  // Ejercicio 1: List – Lista de notas
  print('----- Ejercicio 1: List – Lista de notas -----');
  List<double> grades = [8.5, 7.2, 9.0, 6.8, 7.5];
  print('Notas iniciales: $grades');

  double newGrade = 8.1;
  grades.add(newGrade);
  print('Notas después de añadir una nueva: $grades');

  print('La primera nota es: ${grades.first}');
  print('La última nota es: ${grades.last}');

  double sumGrades = grades.reduce((value, element) => value + element);
  double averageGrades = sumGrades / grades.length;
  print('La media de todas las notas es: ${averageGrades.toStringAsFixed(2)}');
  print('');

  // Ejercicio 2: Set – Correos únicos
  print('----- Ejercicio 2: Set – Correos únicos -----');
  Set<String> emails = {"ana@mail.com", "luis@mail.com", "ana@mail.com", "pedro@mail.com"};
  print('Conjunto de correos: $emails');

  String newEmail = "carlos@mail.com";
  emails.add(newEmail);
  print('Conjunto después de añadir "$newEmail": $emails');

  String emailToSearch = "luis@mail.com";
  print('¿"$emailToSearch" está en el conjunto? ${emails.contains(emailToSearch)}');
  print('');

  // Ejercicio 3: Map – Diccionario de productos
  print('----- Ejercicio 3: Map – Diccionario de productos -----');
  Map<String, double> products = {"pan": 1.0, "leche": 1.5, "huevos": 2.0};
  print('Diccionario de productos inicial: $products');

  print('Precio de la leche: ${products["leche"]}');

  products["café"] = 3.0;
  print('Diccionario después de añadir "café": $products');

  print('Listado de productos y precios:');
  products.forEach((product, price) {
    print('$product → $price');
  });
  print(''); 

  // Ejercicio 4: Queue – Cola de tareas
  print('----- Ejercicio 4: Queue – Cola de tareas -----');
  Queue<String> tasks = Queue<String>();
  tasks.addAll(["Lavar platos", "Hacer compra", "Estudiar"]);
  print('Cola de tareas inicial: $tasks');

  String firstTaskAttended = tasks.removeFirst();
  print('Atendiendo la primera tarea: "$firstTaskAttended"');
  print('Cola de tareas después de atender: $tasks');

  String newTask = "Pasear perro";
  tasks.add(newTask);
  print('Cola de tareas después de añadir "$newTask": $tasks');

  print('Tareas restantes en la cola: $tasks');
  print(''); 
  
  // Ejercicio 5: SplayTreeSet – Números ordenados
  print('----- Ejercicio 5: SplayTreeSet – Números ordenados -----');
  SplayTreeSet<int> orderedNumbers = SplayTreeSet<int>();
  orderedNumbers.addAll([5, 3, 9, 1, 4]);
  print('SplayTreeSet después de añadir números: $orderedNumbers (verificación de ordenación automática)');

  int numberToRemove = 3;
  orderedNumbers.remove(numberToRemove);
  print('SplayTreeSet después de eliminar el número $numberToRemove: $orderedNumbers');
}
