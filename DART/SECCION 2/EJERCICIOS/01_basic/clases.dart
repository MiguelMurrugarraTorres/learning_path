void main() {
  final wolverine = new Heroe(nombre: 'Vegeta', poder: 'Ataque bing bang');

  // wolverine.nombre = "Goku";
  // wolverine.poder = "Teletransportación";

  print(wolverine);
}

class Heroe {
  String nombre;
  String poder;

  // Constructor con parámetros
  //  Heroe(this.nombre, this.poder);

  //  Constructor con parámetros nombrados y requeridos en Dart

  Heroe({required this.nombre, required this.poder});

  //constructor 2
  // Heroe(String cnombre, String cpoder) {
  //   this.nombre = cnombre;
  //   this.poder = cpoder;
  // }

  @override
  String toString() {
    return 'Gerrero Z : nombre: ${this.nombre}, Poder Z : ${this.poder}';
  }
}
