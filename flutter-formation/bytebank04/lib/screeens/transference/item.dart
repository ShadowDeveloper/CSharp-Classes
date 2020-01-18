import 'package:bytebank04/models/transference.dart';
import 'package:flutter/material.dart';

class TransferenceItem extends StatelessWidget {
  final Transference _transference;

  TransferenceItem(this._transference);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transference.value.toString()),
        subtitle: Text(_transference.accountNumber.toString()),
      ),
    );
  }
}
