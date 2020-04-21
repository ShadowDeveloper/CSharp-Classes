import 'package:bytebank/screens/transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/screens/contact_list.dart';
import 'package:flutter/services.dart';
import 'package:bytebank/helper/constants.dart';

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _FeatureItem(
                  ComumConstants().transfer,
                  Icons.branding_watermark,
                  onClick: () => _showContactList(context),
                ),
                _FeatureItem(
                  ComumConstants().transactionFeed,
                  Icons.atm,
                  onClick: () => _showTransactionList(context),
                ),
                _FeatureItem(
                  "Teste",
                  Icons.access_time,
                  onClick: () => _showTransactionList(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showContactList(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ContactList(),
      ),
    );
  }

  void _showTransactionList(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => TransactionsList()),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String label;
  final IconData iconData;
  final Function onClick;

  _FeatureItem(this.label, this.iconData, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).accentColor,
        child: InkWell(
          onTap: () {
            onClick();
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
                    iconData,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
