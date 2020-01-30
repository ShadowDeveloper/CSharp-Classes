import 'package:bytebank01/models/contact.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

const String dbName = "collectors.db";

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, "collectors.db");
    return openDatabase(path, onCreate: (db, dbPath) {
      db.execute(
          'CREATE TABLE contacts(id INTEGER PRIMARY KEY, name TEXT, account_number INTEGER)');
    }, version: 1);
  });
}

Future<int> save(Contact contact) {
  return createDatabase().then((db) {
    final Map<String, dynamic> contactMap = Map();

    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;

    return db.insert("contacts", contactMap);
  });
}

Future<List<Contact>> getAllContacts() async {
  return createDatabase().then((db) {
    return db.query('contacts').then((maps) {
      final List<Contact> contacts = new List();

      for (Map<String, dynamic> map in maps) {
        final Contact contact = Contact(
          map['name'],
          map['account_number'],
          id: map['id'],
        );
        contacts.add(contact);
      }
      return contacts;
    });
  });
}
