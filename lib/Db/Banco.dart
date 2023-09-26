import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Banco {
  banco() async {
    final CaminhoBanco = await getDatabasesPath();
    final localbanco = join(CaminhoBanco, "Banco_libras4.db");

    Database db = await openDatabase(
      localbanco,
      version: 3,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(localbanco);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE CADASTRO_USUARIO(ID INTEGER PRIMARY KEY, NOME VARCHAR(200), EMAIL VARCHAR(200), SENHA VARCHAR(200));';
    await db.execute(sql);

    sql =
        'CREATE TABLE JOGO_ALFABETO(ID INTEGER PRIMARY KEY, PERGUNTA VARCHAR(200), RESPOSTA1 VARCHAR(200),RESPOSTA2 VARCHAR(200),RESPOSTA3 VARCHAR(200),RESPOSTA4 VARCHAR(200),RESPOSTACERTA VARCHAR(200),IMAGEM VARCHAR(200));';
    await db.execute(sql);
    onUpgrade(db, 1, version);
  }

  Future<FutureOr<void>> onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {
      String sql =
          "INSERT INTO CADASTRO_USUARIO (id,NOME, EMAIL, SENHA) VALUES (1, 'joao','joao@gmail.com', '123456');";
      await db.execute(sql);

      sql = 'INSERT INTO JOGO_ALFABETO()';
    }
  }
}
