import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../domain/Imagens.dart';

class Banco {
  banco() async {
    final CaminhoBanco = await getDatabasesPath();
    final localbanco = join(CaminhoBanco, "Banco_librass.db");

    Database db = await openDatabase(
      localbanco,
      version: 4,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(localbanco);
    return db;
  }

  imagens i = imagens();

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE CADASTRO_USUARIO(ID INTEGER PRIMARY KEY, NOME VARCHAR(200), EMAIL VARCHAR(200), SENHA VARCHAR(200));';
    await db.execute(sql);

    sql =
        'CREATE TABLE JOGO_ALFABETO(ID INTEGER PRIMARY KEY, PERGUNTA VARCHAR(200), RESPOSTA1 VARCHAR(200),RESPOSTA2 VARCHAR(200),RESPOSTA3 VARCHAR(200),RESPOSTA4 VARCHAR(200),RESPOSTACERTA INTEGER,IMAGEM VARCHAR(200));';
    await db.execute(sql);

    sql =
        'CREATE TABLE PERFIL(id INTEGER PRIMARY KEY, nome_usuario varchar(100), biografia varchar(200), imagem varchar(200));';
    await db.execute(sql);

    sql =
        "INSERT INTO PERFIL (id, nome_usuario, biografia, imagem) VALUES (1, 'Clara Dailly', 'Estudante', '${i.imageperfil}');";
    await db.execute(sql);

    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (1,'${i.pergunta1}','${i.imagemA}','${i.imagemF}','${i.imagemM}','${i.imagemD}','c','${i.imagemMaca}')";
    await db.execute(sql);

    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (2,'${i.pergunta1}','${i.imagemb}','${i.imagemF}','${i.imagemM}','${i.imagemE}','a','${i.imageBanana}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (3,'${i.pergunta2}','${i.imagemb}','${i.imagemH}','${i.imagemG}','${i.imagemE}','c','${i.imageGato}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (4,'${i.pergunta2}','${i.imagemA}','${i.imagemb}','${i.imagemG}','${i.imagemC}','d','${i.imageCachorro}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (5,'${i.pergunta1}','${i.imagemR}','${i.imagemP}','${i.imagemK}','${i.imagemL}','b','${i.imagePera}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (6,'${i.pergunta2}','${i.imagemA}','${i.imagemP}','${i.imagemL}','${i.imagemb}','d','${i.imageborboleta}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (7,'${i.pergunta1}','${i.imagemM}','${i.imagemP}','${i.imagemU}','${i.imagemL}','c','${i.imageUva}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (8,'${i.pergunta2}','${i.imagemR}','${i.imagemJ}','${i.imagemb}','${i.imagemF}','d','${i.imageformiga}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (9,'${i.pergunta1}','${i.imagemK}','${i.imagemL}','${i.imagemV}','${i.imagemG}','a','${i.imageKiwi}')";
    await db.execute(sql);
    sql =
        "INSERT INTO JOGO_ALFABETO(ID,PERGUNTA,RESPOSTA1,RESPOSTA2,RESPOSTA3,RESPOSTA4,RESPOSTACERTA,IMAGEM) VALUES (10,'${i.pergunta1}','${i.imagemI}','${i.imagemO}','${i.imagemL}','${i.imagemF}','c','${i.imageLeao}')";
    await db.execute(sql);

    onUpgrade(db, 1, version);
  }

  Future<FutureOr<void>> onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {
      String sql =
          "INSERT INTO CADASTRO_USUARIO (id,NOME, EMAIL, SENHA) VALUES (1, 'Kelven','kelven@gmail.com', '123456');";
      await db.execute(sql);
    }
  }
}
