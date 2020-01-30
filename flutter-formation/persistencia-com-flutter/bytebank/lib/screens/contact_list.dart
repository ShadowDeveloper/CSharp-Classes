import 'package:bytebank/screens/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/helper/constants.dart';
import 'package:bytebank/screens/contact_form.dart';
import 'package:bytebank/models/contact.dart';

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
        child: ListView.builder(
          itemCount: _contactList.length,
          itemBuilder: (context, index) {
            final Contact contato = _contactList[index];
            return ContactItem(contato);
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
                  _contactList.add(newContact);
                });
                debugPrint(_contactList.toString());
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
