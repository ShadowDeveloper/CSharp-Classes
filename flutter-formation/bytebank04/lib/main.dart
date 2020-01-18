import 'package:bytebank04/screeens/transference/list.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.white,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepOrangeAccent,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        darkTheme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.black,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepOrangeAccent,
            textTheme: ButtonTextTheme.normal,
          ),
        ),
        home: ByteBankApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransferenceList();
  }
}


