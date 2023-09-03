import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const LaQueSeAvecinaApp());
}

class LaQueSeAvecinaApp extends StatelessWidget {
  const LaQueSeAvecinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La que se avecina',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: SeasonsPage(),
    );
  }
}

class SeasonsPage extends StatelessWidget {
  final List<String> seasons = [
    'Temporada 1'
  ]; // Agrega más temporadas si es necesario

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temporadas'),
      ),
      // drawer: LaQueSeAvecinaDrawer(), // Agrega el Drawer al Scaffold
      body: ListView.builder(
        itemCount: seasons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(seasons[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EpisodesPage(season: index + 1),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class EpisodesPage extends StatelessWidget {
  final int season;
  final List<String> episodeUrls = [
    'https://comunidadmontepinar.es/m3u8/t1/1/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/2/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/3/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/4/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/5/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/6/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/7/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/8/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/9/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/10/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/11/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/12/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/13/index.html',
    'https://comunidadmontepinar.es/m3u8/t1/14/index.html',
  ];

  final List<String> episodeImages = [
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo1.jpg?alt=media&token=03f80db4-01ca-43af-98ea-9ae4050e06d8',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo2.jpg?alt=media&token=ed0da13a-919b-460c-a74c-f460145bdc05',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo3.jpg?alt=media&token=ebd67b3f-ca1f-4422-bf52-6efec128af1b',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo4.jpg?alt=media&token=3bd24bd2-0aeb-43a5-ba8f-bb4f878e32ac',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo5.jpg?alt=media&token=9de6b212-9ef1-4a5a-8f61-fdcb7d50beeb',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo6.jpg?alt=media&token=32d6dafa-8f49-41b4-bfba-9e78c7b1e27e',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo7.jpg?alt=media&token=d90cf4a7-f85e-481d-9d8e-beba5f51e5a5',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo8.jpg?alt=media&token=789dd8ca-4b63-449b-9c91-faf4c00000fc',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo9.jpg?alt=media&token=1fbbcb63-3281-429b-b3ac-4c15655ffa16',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo10.jpg?alt=media&token=ca8e83a4-400c-4928-b418-127283065808',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo11.jpg?alt=media&token=46373b94-6474-4b2c-b082-5bf4788c0772',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo12.jpg?alt=media&token=01b2d80c-9409-4fcb-95c5-13ea304c5357',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/Capitulo13.jpg?alt=media&token=fdca2309-4132-4fe9-bc27-efd5acc3afda',
    'https://firebasestorage.googleapis.com/v0/b/packagestore-67c73.appspot.com/o/bloopers.jpg?alt=media&token=1e354646-f75d-4154-adbc-d6448b684b5e',
  ];

  final List<String> episodeDescriptions = [
    'La urbanización Mirador de Montepinar está por fin completa. A pesar de que los pisos son defectuosos, los timbres no funcionan, las paredes son de papel, hay un par de vecinos muy pero que muy molestos y un nuevo conserje con un dudoso currículum.',
    'Despechada al conocer que el atractivo actor no desea saber nada de ella, Raquel comunica a los vecinos que no les arreglará los desperfectos. Sin embargo, la gran insistencia de los propietarios afectados y de su hermano Joaquín hace que Sergio, a su pesar, vuelva a conquistar a la directora comercial.',
    'Maite es testigo de cómo Eric entrega los azulejos a Enrique y Araceli. La noticia corre como la pólvora por el edificio y poco después los airados vecinos se quejan a Raquel. La directora comercial intenta calmar los ánimos prometiéndoles una reunión con el máximo responsable de la constructora.',
    'Javi, mal aconsejado por Leo, Maxi y Coque, contrata finalmente a un “matón” para que el Moroso pague su deuda, pero resulta ser un individuo poco profesional que se equivoca de víctima en repetidas ocasiones.',
    'Al conocer la noticia de la muerte de su hermana, Doña Charo viaja precipitadamente al pueblo para hacerse cargo de los pormenores del fallecimiento y de la herencia. Poco después, la anciana regresa a Montepinar con una vaca, varias gallinas y un cerdo, que le han sido legados por su hermana.',
    'Tras extraviar su cartera en la comunidad, Antonio Recio solicita la convocatoria de una junta para interrogar a los vecinos sobre el asunto. Javi le indica que no puede desconfiar de los demás propietarios sin pruebas, pero cuando llega a casa descubre que Lola ha encontrado la cartera y ha pagado una compra con la tarjeta del vecino',
    'Izaskun y Mari Tere, ocultas en el cuarto de basuras, esperan a que Raquel, Joaquín y Eric concluyan su jornada de trabajo para acceder al piso piloto y pasar allí la noche. Cuando constatan que ya no queda nadie en la vivienda, se introducen en ella. Sin embargo, las dos okupas ignoran que los empleados de la compañía se han entretenido charlando en la puerta de entrada.',
    'Enrique sufre una profunda depresión, situación por la que rompe a llorar frecuentemente y sin motivo. Preocupada por el deplorable estado anímico de su esposo, Araceli intenta animarle, pero nada parece consolarle. Al ver que los esfuerzos de su hija son infructuosos, Doña Charo receta a su suegro unas pastillas “milagrosas” que le animan de sobremanera.',
    'Temiendo perder su empleo como comercial en la constructora, Joaquín acude a un medio de comunicación para denunciar que dos mujeres mayores han invadido su lugar de trabajo impidiéndole desempeñar su cometido profesional. El interés mediático en el caso llega a “Mirador de Montepinar”, donde Izaskun y Mari Tere se convierten en un ejemplo a seguir.',
    'Las altas temperaturas producidas por una repentina ola de calor obligan a los propietarios a pasar la noche “al fresco”. La familia Pastor-Madariaga decide sacar los colchones al jardín de su vivienda, Goya y Vicente se resignan a dormir en el balcón de su vivienda y Amador y Maite apenas logran conciliar el sueño.',
    'La permanente exposición de Izaskun y Mari Tere en los distintos medios de comunicación y la imposibilidad de acceder al piso piloto impide a la constructora vender las viviendas de la segunda fase de “Mirador de Montepinar”',
    'Sergio acude al dermatólogo que le examina y le diagnostica que padece una infección que se transmite por vía sexual. El médico recomienda al actor que se abstenga de mantener relaciones íntimas.',
    'Raquel se reconcilia con Sergio pero pone como condición irse a vivir con él. Joaquín, preocupado por su futuro en la casa, habla con Sergio, que le comunica que tendría que irse a vivir a otro lugar. Joaquín se convertirá así en el nuevo compañero de piso de Eric que, tras la muerte de su abuela, ya dispone de un piso en el centro de la ciudad.',
    'Especial Resumen Temporada 1 y Tomas Falsas de LA QUE SE AVECINA.',
  ];

  EpisodesPage({required this.season});

  @override
  Widget build(BuildContext context) {
    final List<String> episodes = episodeUrls
        .map((url) => 'Capítulo ${episodeUrls.indexOf(url) + 1}')
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Temporada $season'),
      ),
      body: ListView.builder(
        itemCount: episodes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(episodes[index]),
            subtitle: Text(episodeDescriptions[index]),
            leading: CachedNetworkImage(
              imageUrl: episodeImages[index],
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            onTap: () {
              _showVideoDialog(context, episodeUrls[index]);
            },
          );
        },
      ),
    );
  }

  void _showVideoDialog(BuildContext context, String url) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ver episodio'),
          content: Text('¿Dónde quieres ver el episodio?'),
          actions: [
            TextButton(
              child: Text('Dentro de la app'),
              onPressed: () {
                Navigator.of(context).pop();
                _loadVideoInApp(context, url);
              },
            ),
            TextButton(
              child: Text('En el navegador'),
              onPressed: () {
                Navigator.of(context).pop();
                _launchURL(url);
              },
            ),
          ],
        );
      },
    );
  }

  void _loadVideoInApp(BuildContext context, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebviewScaffold(
          url: url,
          appBar: AppBar(
            title: Text('Episodio'),
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se puede abrir la URL: $url';
    }
  }
}
