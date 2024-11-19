// main.dart
import 'package:flutter/material.dart';
import 'seasons_page.dart';

void main() {
  runApp(const LaQueSeAvecinaApp());
}

class LaQueSeAvecinaApp extends StatelessWidget {
  const LaQueSeAvecinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La que se avecina',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: SeasonsPage(),
    );
  }
}


