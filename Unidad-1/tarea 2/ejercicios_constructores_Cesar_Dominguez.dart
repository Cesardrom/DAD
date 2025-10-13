
class Pelicula {
    String titulo;
    int anio;
    
    Pelicula(this.titulo, this.anio);

    void info(){
      print("$titulo, $anio");
    } 
}

class Tarea {
    String descripcion;
    bool completada;
    
    Tarea(this.descripcion, this.completada);

    Tarea.incompleta(this.descripcion) : completada = false;

    void info(){
      print("$descripcion, $completada");
    } 
}

class Circulo {
    double radio;
    double area;
    
    Circulo(this.radio, this.area);

    Circulo.area(this.radio) : area = 3.14 * radio * radio;

    void info(){
      print("$radio, $area");
    } 
}

class Mensaje {
    String texto;
    String prioridad;
    
    Mensaje(this.texto, this.prioridad);

    Mensaje.normal({required this.texto, this.prioridad = "normal"});

    void info(){
      print("$texto, $prioridad");
    } 
}

class Moneda {
  final String codigo, simbolo;
  const Moneda(this.codigo, this.simbolo);

  void info(){
      print("$codigo, $simbolo");
  }
}

class Alumno {
  int nota;
  String nombre;

  Alumno(this.nombre, this.nota);

  Alumno.aprobado(this.nombre) : nota = 5;

  void info(){
      print("$nombre, $nota");
  }
}

class Sesion {
  static Sesion? _instance;

  Sesion._interna();

  factory Sesion() {
    _instance ??= Sesion._interna();
    return _instance!;
  }


}

void main(){
  print("1️⃣ Constructor normal");
  final pelicula = Pelicula("Avengers", 2010);
  pelicula.info();

  print("2️⃣ Constructor nombrado");

  final tarea1 = Tarea("hwsfreifierhfh", true);
  final tarea2 = Tarea.incompleta("hwsfreifierhfh");

  tarea1.info();
  tarea2.info();

  print("3️⃣ Constructor con inicialización (:)");

  final circulo1 = Circulo(12.2, 14.9);
  final circulo2 = Circulo.area(12.2);

  circulo1.info();
  circulo2.info();

  print("4️⃣ Constructor con parámetros nombrados ({})");

  final mensaje1 = Mensaje("hwsfreifierhfh", "alta");
  final mensaje2 = Mensaje.normal(texto: "hwsfreifierhfh");

  mensaje1.info();
  mensaje2.info();

  print("5️⃣ Constructor const");

  final moneda1 = const Moneda("EUR", "€");
  final moneda2 = const Moneda("EUR", "€");

  moneda1.info();
  moneda2.info();

  print(identical(moneda2, moneda1));

  print("6️⃣ Constructor con redirección");

  final alumno1 = Alumno("Cesar", 10);
  final alumno2 = Alumno.aprobado("Marcos");

  alumno1.info();
  alumno2.info();

  print("7️⃣ Constructor de fábrica (factory)");

  final sesion1 = Sesion();
  final sesion2 = Sesion();

  print(identical(sesion1, sesion2));

}
