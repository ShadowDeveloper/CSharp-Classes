import 'package:json_annotation/json_annotation.dart';
import 'contact.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  final double value;
  final Contact contact;

  Transaction(
    this.value,
    this.contact,
  );

//Receber um objeto json e transformar em objeto dart
  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

//Receber um objeto dart e transformar em objeto json para servidor
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  /*------------------- modo antigo -------------------*/

  // Transaction.fromJson(Map<String, dynamic> json)
  //     : value = json['value'],
  //       contact = Contact.fromJson(json['contact']);

  // Map<String, dynamic> toJson() => {
  //       'value': value,
  //       "contact": contact.toJson(),
  //     };

  @override
  String toString() {
    return 'Transaction{value: $value, contact: $contact}';
  }
}
