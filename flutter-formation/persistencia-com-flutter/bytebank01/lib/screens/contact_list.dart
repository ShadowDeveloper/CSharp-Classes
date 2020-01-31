import 'package:flutter/material.dart';
import 'package:bytebank01/helper/constants.dart';
import 'package:bytebank01/screens/contact_form.dart';
import 'package:bytebank01/models/contact.dart';
import 'package:bytebank01/database/app_database.dart';
import 'package:bytebank01/screens/contact_item.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ComumConstants().contacts.toUpperCase()),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: FutureBuilder<List<Contact>>(
          // initialData: List(),
          future: Future.delayed(Duration(seconds: 1)).then(
            (value) => getAllContacts(),
          ),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              final List<Contact> _contactList = snapshot.data;
              return ListView.builder(
                itemCount: _contactList.length,
                itemBuilder: (context, index) {
                  final Contact contato = _contactList[index];
                  return ContactItem(contato);
                },
              );
            }
            return SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text("Carregando..."),
                  )
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future _navigatorRouter = Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContactForm(),
            ),
          );
          _navigatorRouter.then(
            (newContact) {
              if (newContact != null) {
                setState(() {
                  getAllContacts();
                });
              }
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
