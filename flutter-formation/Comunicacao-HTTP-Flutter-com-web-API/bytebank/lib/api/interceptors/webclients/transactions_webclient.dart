import 'dart:convert';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';

import '../../webclient.dart';

const String apiPort = "8081";
const String apiUrl = "http://192.168.15.12:$apiPort";

class TransactionsWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response = await client.get("$apiUrl/transactions").timeout(
          Duration(seconds: 15),
        );

    //Receber um objeto em que o Dart entenda para fazer a conversão
    final List<dynamic> decodedJson = jsonDecode(response.body);

    return decodedJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }

  Future<Transaction> save(Transaction transaction, String password) async {
    final Map<String, String> apiHeaders = {
      "Content-Type": "application/json",
      "password": password
    };

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

    return Transaction.fromJson(jsonDecode(response.body));
  }
}
