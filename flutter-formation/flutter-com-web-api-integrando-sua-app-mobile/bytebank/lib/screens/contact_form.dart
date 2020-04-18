import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bytebank/helper/constants.dart';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/database/dao/contact_dao.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumber = TextEditingController();
  final ContactDao _dao = ContactDao();

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
                controller: _nameController,
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
                  ),
                ),
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 8.0, 20.0, 15.0),
              child: TextField(
                controller: _accountNumber,
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
                    textColor: Colors.white,
                    child: Text(
                      ComumConstants().cadastrar.toUpperCase(),
                      style: TextStyle(fontSize: 16.0),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    onPressed: () {
                      final String name = _nameController.text;
                      final int accountNumber =
                          int.tryParse(_accountNumber.text);

                      final Contact newContact = Contact(name, accountNumber);

                      _dao.save(newContact).then((id) => Navigator.pop(context, id));
                    },
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
