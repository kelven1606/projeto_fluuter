import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'libras.db'); // path + 'pacote.db';

    Database db = await openDatabase(
      dbPath,
      version: 2,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE cadastro (id INTEGER PRIMARY KEY, nome varchar(100), email varchar(100), senha varchar(100)';

    onUpgrade(db, 1, version);
  }

  Future<FutureOr<void>> onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {
      String sql =
          'CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))';
      await db.execute(sql);

      sql =
          "INSERT INTO user (username, password) VALUES ('joao@gmail.com', '123456')";
      await db.execute(sql);
    }
  }
}
