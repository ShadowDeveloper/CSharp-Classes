import 'package:bytebank/api/interceptors/webclients/transactions_webclient.dart';
import 'package:bytebank/components/button.dart';
import 'package:bytebank/components/transaction_auth_dialog.dart';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final Contact contact;

  TransactionForm(this.contact);

  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final TransactionsWebClient _webClient = new TransactionsWebClient();
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New transaction'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.contact.name,
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  widget.contact.accountNumber.toString(),
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _valueController,
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(labelText: 'Value'),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              ButtonForm(
                'Transfer'.toUpperCase(),
                onPressedFuncion: () {
                  final double value = double.tryParse(_valueController.text);
                  final transactionCreated = Transaction(value, widget.contact);

                  showDialog(
                    context: context,
                    builder: (contextDialog) {
                      /* Repare que mudamos o nome do contexto para ContextDialog, 
                      para que o app saiba qual contexto fechar, no caso o certo seria o context mesmo.*/
                      return TransacationAuthDialog(
                        onConfirm: (String password) {
                          _save(transactionCreated, password, context);
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _save(Transaction transactionCreated, String password,
      BuildContext context) async {
    _webClient.save(transactionCreated, password).then(
      (transaction) {
        if (transaction != null) {
          Navigator.pop(context);
        }
      },
    ).catchError((onError) {
      print(onError);
    });
  }
}
