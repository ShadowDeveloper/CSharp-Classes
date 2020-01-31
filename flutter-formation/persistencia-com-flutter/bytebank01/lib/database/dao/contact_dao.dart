import 'package:bytebank01/models/contact.dart';
import 'package:sqflite/sqflite.dart';
import '../app_database.dart';

class ContactDao {

  static const String _tableName = 'contacts';
  static const String _id = 'id';
  static const String _name = 'name';
  static const String _accountNumber = 'account_number';
  static const String tableSql =
      'CREATE TABLE $_tableName(id INTEGER PRIMARY KEY, name TEXT, account_number INTEGER)';

  Future<int> save(Contact contact) async {
    final Database db = await getDatabase(tableSql);
    final Map<String, dynamic> contactMap = Map();
    contactMap[_name] = contact.name;
    contactMap[_accountNumber] = contact.accountNumber;

    return db.insert(_tableName, contactMap);
  }

  Future<List<Contact>> getAllContacts() async {
    final Database db = await getDatabase(tableSql);
    final List<Map<String, dynamic>> results = await db.query(_tableName);
    List<Contact> contacts = _toList(results);
    return contacts;
  }

  Future<int> deleteContact(int id) async {
    final Database db = await getDatabase(tableSql);
    return db.delete(_tableName, where: "$_id = ?", whereArgs: [id]);
  }

  List<Contact> _toList(List<Map<String, dynamic>> results) {
    final List<Contact> contacts = new List();
    for (Map<String, dynamic> result in results) {
      final Contact contact = Contact(
        result[_name],
        result[_accountNumber],
        id: result[_id],
      );
      contacts.add(contact);
    }
    return contacts;
  }
}
