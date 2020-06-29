import 'package:flutter/material.dart';

ThemeData lightAppTheme() {
  return ThemeData(
    appBarTheme: setAppBarTheme(Colors.black),
    accentColor: Colors.deepOrangeAccent,
    scaffoldBackgroundColor: Colors.white,
    hintColor: Colors.deepOrangeAccent,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepOrangeAccent,
      // colorScheme: ColorScheme(
      //   primary: Colors.white,
      //   primaryVariant: Colors.white,
      //   secondary: Colors.white,
      //   secondaryVariant: Colors.white,
      //   surface: Colors.white,
      //   background: Colors.deepOrangeAccent,
      //   error: Colors.deepOrangeAccent,
      //   onPrimary: Colors.deepOrangeAccent,
      //   onSecondary: Colors.deepOrangeAccent,
      //   onSurface: Colors.deepOrangeAccent,
      //   onBackground: Colors.deepOrangeAccent,
      //   onError: Colors.deepOrangeAccent,
      //   brightness: Brightness.dark,
      // ),
    ),
  );
}

ThemeData darkAppTheme() {
  return ThemeData(
    appBarTheme: setAppBarTheme(Colors.white),
    accentColor: Colors.deepOrangeAccent,
    scaffoldBackgroundColor: Colors.black12,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepOrangeAccent,
      textTheme: ButtonTextTheme.normal,
    ),
  );
}

AppBarTheme setAppBarTheme(Color fontColor) {
  return AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(color: fontColor),
    color: Colors.transparent,
    textTheme: TextTheme(
      title: TextStyle(
        color: fontColor,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
