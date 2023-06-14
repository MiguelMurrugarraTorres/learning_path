void main() {
  final rawjason = {'nombre': 'Gohan', 'poder': 'mazenko'};
  final gohan = Heroe.fromJson(rawjason);

  // final wolverine =
  //     new Heroe(nombre: rawjason['nombre']!, poder: rawjason['poder']!);

  print(gohan);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  Heroe.fromJson(Map<String, String> json)
      : this.nombre = json['nombre']!,
        this.poder = json['poder'] ?? 'No tiene poder';

  String toString() {
    return 'Gerrero Z : nombre: ${this.nombre}, Poder Z : ${this.poder}';
  }
}
