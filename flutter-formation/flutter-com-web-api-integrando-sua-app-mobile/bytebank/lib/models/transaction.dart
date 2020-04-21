import 'contact.dart';

class Transaction {
  final double value;
  final Contact contact;

  Transaction(
    this.value,
    this.contact,
  );

//Receber um objeto json e transformar em objeto dart
  Transaction.fromJson(Map<String, dynamic> json)
      : value = json['value'],
        contact = Contact.fromJson(json['contact']);

//Receber um objeto dart e transformar em objeto json para servidor
  Map<String, dynamic> toJson() => {
        'value': value,
        "contact": contact.toJson(),
      };

  @override
  String toString() {
    return 'Transaction{value: $value, contact: $contact}';
  }
}
