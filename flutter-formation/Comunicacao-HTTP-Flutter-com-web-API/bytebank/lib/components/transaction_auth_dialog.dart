import 'package:flutter/material.dart';

class TransacationAuthDialog extends StatefulWidget {
  final Function(String password) onConfirm;

  TransacationAuthDialog({@required this.onConfirm});

  @override
  _TransacationAuthDialogState createState() => _TransacationAuthDialogState();
}

class _TransacationAuthDialogState extends State<TransacationAuthDialog> {
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Authenticate"),
      backgroundColor: Colors.white,
      content: TextField(
        controller: passwordController,
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
            Navigator.pop(context);
          },
          child: Text("Cancel".toUpperCase()),
        ),
        FlatButton(
          onPressed: () {
            widget.onConfirm(passwordController.text);
            Navigator.pop(context);
          },
          child: Text("Confirm".toUpperCase()),
        )
      ],
    );
  }
}
