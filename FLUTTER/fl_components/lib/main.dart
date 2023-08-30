import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomeScreen(),
          'listview': (BuildContext context) => Listview1Screen(),
          'listview2': (BuildContext context) => Listview2Screen(),
          'alert': (BuildContext context) => AlertScreen(),
          'card': (BuildContext context) => CardScreen(),
        },
        onGenerateRoute: (settings) {
          print(settings);
          return MaterialPageRoute(
            builder: (context)=> const AlertScreen(),
            );
        },
        );
  }
}
