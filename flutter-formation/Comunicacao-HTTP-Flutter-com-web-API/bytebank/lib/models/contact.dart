import 'package:json_annotation/json_annotation.dart';

part 'contact.g.dart';

@JsonSerializable()
class Contact {
  final int id;
  final String name;
  final int accountNumber;

  Contact(this.name, this.accountNumber, {this.id});

  @override
  String toString() {
    return 'Contact{_name: $name, _accountNumber: $accountNumber, _id: $id,}';
  }

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  Map<String, dynamic> toJson() => _$ContactToJson(this);
}
