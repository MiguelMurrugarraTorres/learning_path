void main() {
  final nombre = 'miguel';
  saludar(nombre);
}

void saludar(String x) {
  Map persona = {'Nombre': 'Fernando', 'edad ': 35, 'Soltero': true};
  persona.addAll({4: 'cusqueñito'});
  print(persona);
}
