import 'package:flutter/material.dart';

class TransacationAuthDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Authenticate"),
      backgroundColor: Colors.white,
      content: TextField(
        obscureText: true,
        maxLength: 4,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, letterSpacing: 10),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            print('canceled');
          },
          child: Text("Cancel".toUpperCase()),
        ),
        FlatButton(
          onPressed: () {
            print('confirmed');
          },
          child: Text("Confirm".toUpperCase()),
        )
      ],
    );
  }
}
