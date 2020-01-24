import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void createDatabase() async {
  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, "collectors.db");
    openDatabase(path, onCreate: (db, dbPath) {
      db.execute(
          'CREATE TABLE contacts(id INTEGER PRIMARY KEY, name TEXT, account_number INTEGER)');
    });
  });
}
