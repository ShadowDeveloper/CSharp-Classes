import 'package:bytebank/api/interceptors/webclients/transactions_webclient.dart';
import 'package:bytebank/components/centered_message.dart';
import 'package:bytebank/components/progress.dart';
import 'package:bytebank/screens/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/models/transaction.dart';

class TransactionsList extends StatelessWidget {
  final TransactionsWebClient _webClient = new TransactionsWebClient();
  final List<Transaction> transactions = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transactions'.toUpperCase()),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: FutureBuilder<List<Transaction>>(
            // future: findAll(),
            future: Future.delayed(Duration(seconds: 2)).then(
              (value) => _webClient.findAll(),
            ), // Para gerar um atraso na requisição e assim podemos ver o loading
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  break;
                case ConnectionState.waiting:
                  return Progress();
                  break;
                case ConnectionState.active:
                  break;
                case ConnectionState.done:
                  if (snapshot.hasData) {
                    final List<Transaction> _transactionList = snapshot.data;
                    if (_transactionList.isNotEmpty) {
                      return ListView.builder(
                        itemCount: _transactionList.length,
                        itemBuilder: (context, index) {
                          final Transaction transaction =
                              _transactionList[index];
                          return TransactionItem(transaction);
                        },
                      );
                    }
                  }

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CenteredMessage(
                        message: "No transactions found",
                        icon: Icons.warning,
                      )
                    ],
                  );

                  break;
              }
              return Text("Unknow error");
            },
          ),
        ));
  }
}
