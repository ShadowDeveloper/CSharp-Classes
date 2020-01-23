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
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 8.0, 20.0, 15.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Nome coletor",
                    labelStyle: TextStyle(
                      color: Colors.deepOrangeAccent,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrangeAccent),
                    ),
                    suffixIcon: Icon(
                      Icons.text_fields,
                      color: Colors.deepOrangeAccent,
                    )),
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 8.0, 20.0, 15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Numero coletor",
                  labelStyle: TextStyle(
                    color: Colors.deepOrangeAccent,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  suffixIcon: Icon(
                    Icons.looks_one,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                style: TextStyle(fontSize: 18.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
              child: InkWell(
                child: SizedBox(
                  width: double.maxFinite,
                  height: 45.0,
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    textColor: Colors.white,
                    child: Text(
                      ComumConstants().cadastrar.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16.0
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
