import 'package:bytebank/helper/constants.dart';
import 'package:flutter/material.dart';

class ContactstList extends StatelessWidget with ComumConstants {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle.toUpperCase()),
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
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
