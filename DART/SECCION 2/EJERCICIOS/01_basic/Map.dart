void main() {
  final nombre = 'Miguel Murrugarra';
  final mensaje = " aprenderas dart y flutter =) ";
  //saludar(nombre);
  saludar2(nombre: nombre, mensaje: mensaje);
}

void saludar(String nombre, [String mensaje = 'HI']) {
  print('$mensaje $nombre' + ' Bienvenido al curso de dart');
}

void saludar2({required String nombre, required mensaje}) {
  print(' $mensaje, $nombre ');
}
