import 'package:flutter/material.dart';

class ButtonForm extends StatelessWidget {
  final String buttonText;
  final Function onPressedFuncion;
  final double buttonHeight;

  ButtonForm(this.buttonText,
      {this.buttonHeight, @required this.onPressedFuncion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
      child: InkWell(
        child: SizedBox(
            width: double.maxFinite,
            height: this.buttonHeight ?? 45.0,
            child: RaisedButton(
              elevation: 0,
              textColor: Colors.white,
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 16.0),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              onPressed: onPressedFuncion,
            )),
      ),
    );
  }
}
