
import 'package:sqflite/sqflite.dart';

import '../domain/Perfis.dart';
import 'Banco.dart';


class PerfisDao {


  Future<List<Perfis>>  findAll() async {
    Banco banco = Banco();
    Database db = await banco.banco();


    String sql = 'SELECT * FROM PERFIL;';
    final resultSet = await db.rawQuery(sql);


    List<Perfis> list = [];
    for (var json in resultSet) {
      Perfis tabela = Perfis.fromJson(json);
      list.add(tabela);
    }


    return list;
  }
}
