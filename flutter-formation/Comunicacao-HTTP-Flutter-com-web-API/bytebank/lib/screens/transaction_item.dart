import 'package:bytebank/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final Transaction _transaction;
  TransactionItem(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(
          _transaction.value.toString(),
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${_transaction.contact.accountNumber.toString()} - ${_transaction.contact.name}',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
