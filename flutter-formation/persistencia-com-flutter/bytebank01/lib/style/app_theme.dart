import 'package:flutter/material.dart';

ThemeData lightAppTheme() {
  return ThemeData(
    appBarTheme: setAppBarTheme(Colors.deepOrangeAccent),
    accentColor: Colors.deepOrangeAccent,
    scaffoldBackgroundColor: Colors.white,
    hintColor: Colors.deepOrangeAccent,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepOrangeAccent,
      textTheme: ButtonTextTheme.accent,
    ),
  );
}

ThemeData darkAppTheme() {
  return ThemeData(
    appBarTheme:  setAppBarTheme(Colors.deepOrangeAccent),
    accentColor: Colors.deepOrangeAccent,
    scaffoldBackgroundColor: Colors.black12,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepOrangeAccent,
      textTheme: ButtonTextTheme.normal,
    ),
  );
}

AppBarTheme setAppBarTheme(Color color) {
  return AppBarTheme(
    elevation: 0,
    color: Colors.transparent,
    textTheme: TextTheme(
      title: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    ),
  );
}

