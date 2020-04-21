import 'package:flutter/material.dart';
import 'package:bytebank/models/contact.dart';

class ContactItem extends StatelessWidget {
  final Contact _contactItem;
  final Function onClick;

  ContactItem(this._contactItem, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onClick,
        title: Text(
          _contactItem.name,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          _contactItem.accountNumber.toString(),
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
