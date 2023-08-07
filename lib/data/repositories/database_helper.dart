import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = 'todo.db';
  static const _databaseVersion = 1;

  static Future<Database> initializeDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = '$databasesPath/$_databaseName';

    return openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _createDatabase,
    );
  }

  static Future<void> _createDatabase(Database db, int version) async {
    await db.execute('CREATE TABLE todos (id INTEGER PRIMARY KEY, task TEXT)');
  }
}
