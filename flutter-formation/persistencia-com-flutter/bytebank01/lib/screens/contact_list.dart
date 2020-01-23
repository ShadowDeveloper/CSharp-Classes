import 'package:flutter/material.dart';
import 'package:bytebank01/helper/constants.dart';
import 'package:bytebank01/screens/contact_form.dart';
import 'package:bytebank01/models/contact.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  final List<Contact> _contactList = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ComumConstants().contacts.toUpperCase()),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text(
                  "Titulo",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "SubTitulo",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
            MaterialPageRoute(
              builder: (context) => ContactForm(),
            ),
          )
              .then(
            (newContact) {
              setState(() {
                _contactList.add(newContact);
              });
              debugPrint(_contactList.toString());

            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
