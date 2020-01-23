import 'package:flutter/material.dart';
import 'package:bytebank01/style/app_theme.dart';
import 'package:bytebank01/screens/dashboard.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightAppTheme(),
      darkTheme: darkAppTheme(),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
