import 'package:bytebank01/database/app_database.dart';
import 'package:bytebank01/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:bytebank01/style/app_theme.dart';
import 'package:bytebank01/screens/dashboard.dart';

// void main() => runApp(ByteBankApp());
void main() {
  runApp(ByteBankApp());
  save(Contact("Ivo", 122545, id: 2)).then((id) {
    getAllContacts().then((contacts) => debugPrint(contacts.toString()));
  });
}

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
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
