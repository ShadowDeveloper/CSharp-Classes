import 'package:flutter/material.dart';
import 'package:bytebank_api/screens/contact_list.dart';
import 'package:flutter/services.dart';
import 'package:bytebank_api/helper/constants.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(ComumConstants().appBarTitle.toUpperCase()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /*Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),*/
          Row(
            children: <Widget>[
              _FeatureItem(ComumConstants().contacts, Icons.branding_watermark),
              _FeatureItem(ComumConstants().transactionFeed, Icons.atm),
            ],
          ),
        ],
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String _label;
  final IconData _iconData;

  _FeatureItem(this._label, this._iconData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).accentColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ContactList(),
              ),
            );
          },
          child: Container(
            width: 140.0,
            height: 80.0,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    _iconData,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Text(
                    _label,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
