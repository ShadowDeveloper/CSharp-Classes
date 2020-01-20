import 'package:bytebank/screens/contacts_list.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/style/app_theme.dart';
import 'package:bytebank/screens/dashboard.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightAppTheme(),
      darkTheme: darkAppTheme(),
      home: Dashboard(),
      //home: ContacstList(),
      debugShowCheckedModeBanner: false,
    );
  }
}