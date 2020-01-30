class Contact {
  final int id;
  final String name;
  final int accountNumber;

  Contact(this.name, this.accountNumber, {this.id});

  @override
  String toString() {
    return 'Contact{_name: $name, _accountNumber: $accountNumber, _id: $id,}';
  }
}
