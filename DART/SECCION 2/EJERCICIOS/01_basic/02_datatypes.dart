main() {
//====numeros

  int _a = 10;
  double _b = 20.0;

  double sum = _a + _b;
  //print(sum);

//======= Strings

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

  //===Lists  []

  //List<String> villanosDeprecated = new List();

  List<String> villanos = [
    'Alianza lima',
    'Sportin Cristal',
    'Melgar FC'
  ]; // siempre base 0

  villanos[0] = 'El ganador del clausura';
  villanos[1] = 'El campeón Peruano 2023';
  villanos[2] = 'Sporting cristal';

  villanos.add('Campeon de la libertadores');
  villanos.add('Campeon de la libertadores');
  villanos.add('Campeon de la libertadores');

  // print(villanos);

  //==== convertir de listado a sets

  var villanosSet = villanos.toSet();
  //print(villanosSet);

  // ======= Sets  {}

  Set<String> villanos2 = {'Alianza lima', 'Sportin Cristal', 'Melgar FC'};

  villanos2.add('UTC de cajamarca');
  villanos2.add('UTC de cajamarca');
  villanos2.add('UTC de cajamarca');

// ========= Maps  (diccionarios / Objetos literares)

  Map<String, dynamic> iroman = {
    'nombre': 'Tony Stark',
    'Poder': 'Inteligencia y dinero ',
    'nivel': 9000
  };

  //print(iroman['nombre']);

  Map<String, dynamic> capitanAmerica = new Map();

  capitanAmerica
      .addAll({'Nombre': 'Steve', 'poder': 'superPoder', 'nivel': 6000});
  print(capitanAmerica);
}
