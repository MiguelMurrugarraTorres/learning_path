// seasons_page.dart
import 'package:flutter/material.dart';
import 'episodes_page.dart';

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
