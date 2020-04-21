import 'dart:convert';

import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';

import '../../webclient.dart';

const String apiPort = "8081";
const String apiUrl = "http://192.168.15.12:$apiPort";
const Map<String, String> apiHeaders = {
  "Content-Type": "application/json",
  "password": "2000"
};

class TransactionsWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response = await client.get("$apiUrl/transactions").timeout(
          Duration(seconds: 15),
        );

    List<Transaction> transactions = _toTransactions(response);

    return transactions;
  }

  Future<Transaction> save(Transaction transaction) async {
    final String transactionJson = jsonEncode(transaction
        .toJson()); //Receber um objeto dart e transformar em objeto json para servidor

    final Response response = await client
        .post(
          "$apiUrl/transactions",
          body: transactionJson,
          headers: apiHeaders,
        )
        .timeout(
          Duration(seconds: 15),
        );

    return _toTransaction(response);
  }

  List<Transaction> _toTransactions(Response response) {
    final List<dynamic> decodedJson = jsonDecode(
        response.body); //Receber um objeto json e transformar em objeto dart

    final List<Transaction> transactions = List();
    for (Map<String, dynamic> transactionJson in decodedJson) {
      transactions.add(Transaction.fromJson(transactionJson));
    }
    return transactions;
  }

  Transaction _toTransaction(Response response) {
    Map<String, dynamic> transactionResponse = jsonDecode(response.body);
    return Transaction.fromJson(transactionResponse);
  }
}
