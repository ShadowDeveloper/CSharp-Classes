import 'package:flutter/material.dart';

ThemeData lightAppTheme() {
  return ThemeData(
    appBarTheme: setAppBarTheme(Colors.deepOrangeAccent),
    primaryColor: Colors.white,
    accentColor: Colors.deepOrangeAccent,
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepOrangeAccent,
      textTheme: ButtonTextTheme.accent,
    ),
  );
}

ThemeData darkAppTheme() {
  return ThemeData(
    appBarTheme:  setAppBarTheme(Colors.deepOrangeAccent),
    primaryColor: Colors.black,
    accentColor: Colors.deepOrangeAccent,
    scaffoldBackgroundColor: Colors.black,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepOrangeAccent,
      textTheme: ButtonTextTheme.normal,
    ),
  );
}

AppBarTheme setAppBarTheme(Color color) {
  return AppBarTheme(
    elevation: 0,
    textTheme: TextTheme(
      title: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    ),
  );
}

