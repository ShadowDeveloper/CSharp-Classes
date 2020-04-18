import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

const String apiPort = "8081";
const String apiUrl = "http://192.168.15.12:$apiPort";
const Map<String, String> apiHeaders = {
  "Content-Type": "application/json",
  "password": "2000"
};

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print('Request');
    print('URL: ${data.url}');
    print('Headers: ${data.headers}');
    print('Body: ${data.body}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print('Response');
    print('URL: ${data.url}');
    print('StatusCode: ${data.statusCode}');
    print('Headers: ${data.headers}');
    print('Body: ${data.body}');
    return data;
  }
}

final Client client = HttpClientWithInterceptor.build(
  interceptors: [LoggingInterceptor()],
);

Future<List<Transaction>> findAll() async {
  final Response response = await client.get("$apiUrl/transactions").timeout(
        Duration(seconds: 15),
      );
  final List<dynamic> decodedJson = jsonDecode(
      response.body); //Receber um objeto json e transformar em objeto dart

  final List<Transaction> transactions = List();
  for (Map<String, dynamic> transactionJson in decodedJson) {
    final Map<String, dynamic> contactJson = transactionJson['contact'];
    final Transaction transaction = Transaction(
      transactionJson['value'],
      Contact(
        contactJson['name'],
        contactJson['accountNumber'],
      ),
    );
    transactions.add(transaction);
  }

  return transactions;
}

Future<Transaction> save(Transaction transaction) async {
  final Map<String, dynamic> transactionMap = {
    'value': transaction.value,
    "contact": {
      'name': transaction.contact.name,
      'accountNumber': transaction.contact.accountNumber,
    }
  };

  final String transactionJson = jsonEncode(
      transactionMap); //Receber um objeto dart e transformar em objeto json para servidor

  final Response response = await client
      .post(
        "$apiUrl/transactions",
        body: transactionJson,
        headers: apiHeaders,
      )
      .timeout(
        Duration(seconds: 15),
      );

  Map<String, dynamic> transactionResponse = jsonDecode(response.body);

  final Map<String, dynamic> contactJson = transactionResponse['contact'];
  return Transaction(
    transactionResponse['value'],
    Contact(
      contactJson['name'],
      contactJson['accountNumber'],
    ),
  );
}
