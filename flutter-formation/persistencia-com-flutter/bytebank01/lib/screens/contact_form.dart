import 'package:flutter/material.dart';
import 'package:bytebank01/helper/constants.dart';
import 'package:flutter/services.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ComumConstants().contactFormTitle.toUpperCase(),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 8.0, 20.0, 15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Ramirez...",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 8.0, 20.0, 15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Number",
                hintText: "11 9 7888-9988",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}
