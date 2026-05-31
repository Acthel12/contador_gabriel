import 'package:contador_gabriel/screens/screens.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static const initialRoute = "/home";

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/info': (BuildContext context) => const InfoScreen(),
  };

}
