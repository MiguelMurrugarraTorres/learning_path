import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => HomeScreen(),
    'listview': (BuildContext context) => Listview1Screen(),
    'listview2': (BuildContext context) => Listview2Screen(),
    'alert': (BuildContext context) => AlertScreen(),
    'card': (BuildContext context) => CardScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
