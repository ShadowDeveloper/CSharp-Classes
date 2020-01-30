import 'package:flutter/material.dart';
import 'screens/dashboard.dart';
import 'style/app_theme.dart';

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
