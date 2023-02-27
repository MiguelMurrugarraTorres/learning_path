void main(List<String> arguments) {
  int miPrimerNumero;
  double miPrimerNumeroDecimal;

  miPrimerNumero = 9;
  String miPrimerTexto = 'Texto Comilla simple';

  String miPrimerTexto2 =
      "Texto Comilla doble: $miPrimerNumero\nsalto de lina\notra\ny otra";

  String miPrimerTexto3 = """ 
  
  JULITO ME LLEGAS AL NEPE
  TURCO AMASA HUEVO
  SAYAN TU FLACA DE HACE CACHUCHO

  """;

  miPrimerNumeroDecimal = 10.5;

  print(miPrimerNumero);
  print(miPrimerNumeroDecimal);
  print(miPrimerTexto);
  print(miPrimerTexto2);
  print(miPrimerTexto3);
}
