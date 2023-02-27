main() {
//====numeros

  int _a = 10;
  double _b = 20.0;

  double sum = _a + _b;

  //print(sum);

  //==== Strings

  String nombre = 'michael';
  String nombre2 = 'miguel';
  String anio = '2022 XD';
  String nombre4 = "SPORTING CRISTAL CAMPEON";
  String multilinea = """ 
  Hola $nombre
  My name's $nombre2
  and i'm un vergon en dart!! AND 
  """;
  // print(multilinea.toUpperCase() + '' + nombre4.toUpperCase() + ' ' + anio);

  //===== Booleans

  bool isActive = true;
  bool isNotActive = !isActive;

  //print(isNotActive);

  //===Lists

  //List<String> villanosDeprecated = new List();

  List<String> villanos = [
    'Alianza lima',
    'Sportin Cristal',
    'Melgar FC'
  ]; // siempre base 0

  villanos[0] = 'El ganador del clausura';
  villanos[1] = 'El campeón Peruano 2022';
  villanos[2] = 'El ganador del apertura';

  print(villanos);
}
