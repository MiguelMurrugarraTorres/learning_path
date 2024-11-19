import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'webview_page.dart';

class EpisodesPage extends StatefulWidget {
  final int season;
  EpisodesPage({required this.season});

  @override
  _EpisodesPageState createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  final List<String> seasons = ['Temporada 1', 'Temporada 2', 'Temporada 3']; // Más temporadas
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

 int selectedEpisodeIndex = 0;
  String selectedSeason = 'Temporada 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: episodeImages[selectedEpisodeIndex],
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              IconButton(
                icon: const Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 64,
                ),
                onPressed: () {
                  _loadVideoInApp(context, episodeUrls[selectedEpisodeIndex]);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'La Que se Avecina',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.white),
                      onPressed: () {
                        // Lógica para compartir
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {
                        // Lógica para me gusta
                      },
                    ),
                  ],
                ),
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => _showSeasonSelector(context),
                  child: Text(
                    selectedSeason,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Text(
                  '${selectedEpisodeIndex + 1} Episodes',
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: episodeUrls.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedEpisodeIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: selectedEpisodeIndex == index
                          ? const Color.fromARGB(255, 130, 11, 2)
                          : Colors.black54,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(
                      child: selectedEpisodeIndex == index
                          ? const Icon(Icons.play_arrow, color: Colors.white)
                          : Text(
                              '${index + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SingleChildScrollView(
                child: Text(
                  episodeDescriptions[selectedEpisodeIndex],
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSeasonSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: seasons.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  seasons[index],
                  style: TextStyle(
                    fontSize: 18,
                    color: selectedSeason == seasons[index] ? Colors.red : Colors.white,
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedSeason = seasons[index];
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  void _loadVideoInApp(BuildContext context, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(url: url),
      ),
    );
  }
}