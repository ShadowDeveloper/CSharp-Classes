class Contact {
  final int id;
  final String name;
  final int accountNumber;

  Contact(this.name, this.accountNumber, {this.id});

  @override
  String toString() {
    return 'Contact{_name: $name, _accountNumber: $accountNumber, _id: $id,}';
  }

//Receber um objeto json e transformar em objeto dart
  Contact.fromJson(json)
      : id = json['id'],
        name = json['name'],
        accountNumber = json['accountNumber'];

//Receber um objeto dart e transformar em objeto json para servidor
  Map<String, dynamic> toJson() => {
        'name': name,
        'accountNumber': accountNumber,
      };
}
