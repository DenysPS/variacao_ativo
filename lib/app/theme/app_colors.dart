import 'package:flutter/material.dart';

class AppColors {
  static const amber = Colors.amber;
  static const deepOrange = Colors.deepOrange;
  static const primary = Color.fromARGB(255, 238, 158, 86);
  static const secondary = Color.fromARGB(255, 30, 57, 58);
  static const grey = Colors.grey;
  static MaterialColor generateMaterialColorFromColor() {
    return MaterialColor(primary.value, {
      50: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.1,
      ),
      100: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.2,
      ),
      200: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.3,
      ),
      300: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.4,
      ),
      400: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.5,
      ),
      500: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.6,
      ),
      600: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.7,
      ),
      700: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.8,
      ),
      800: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        0.9,
      ),
      900: Color.fromRGBO(
        primary.red,
        primary.green,
        primary.blue,
        1.0,
      ),
    });
  }
}
