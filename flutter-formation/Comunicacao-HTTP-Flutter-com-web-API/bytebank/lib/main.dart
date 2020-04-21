import 'package:flutter/material.dart';
import 'package:bytebank/style/app_theme.dart';
import 'package:bytebank/screens/dashboard.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightAppTheme(),
      darkTheme: darkAppTheme(),
      home: Dashboard(),
      debugShowCheckedModeBanner: true,
    );
  }
}
