import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> getDatabase(String createTableSql) async {
  
  final String path = join(await getDatabasesPath(), "collectors.db");
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(createTableSql);
    },
    version: 1,
    // onDowngrade: onDatabaseDowngradeDelete,
  );
}
