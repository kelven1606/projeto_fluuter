import 'package:libras2/Db/Banco.dart';
import 'package:libras2/domain/jogoalfabetoJson.dart';
import 'package:sqflite/sqlite_api.dart';

import '../domain/Cadastros.dart';

class JogoalfabetoDAO {
  findall() async {
    Banco bd = Banco();
    Database db = await bd.banco();

    String sql = 'SELECT * FROM JOGO_ALFABETO;';
    final resultSet = await db.rawQuery(sql);

    print('$resultSet');
  }

  Future<List<jogoalfabetoJson>> alfabeto({required int id}) async {
    Banco banco = Banco();
    Database db = await Banco().banco();

    String sql = 'SELECT * FROM JOGO_ALFABETO WHERE ID = $id;';
    final resultSet = await db.rawQuery(sql);

    List<jogoalfabetoJson> list = [];
    for (var json in resultSet) {
      jogoalfabetoJson pacote = jogoalfabetoJson.fromJson(json);
      list.add(pacote);
    }
    return list;
  }
}

  /*Future<bool> ExcluirUsuario(
     int num ) async {
    Banco banco = Banco();
    Database db = await banco.banco();

    String sql = 'Delete FROM CADASTRO_USUARIO '
        'WHERE Id = ?; ';

    final resultSet = await db.rawQuery(sql, [num]);

    return resultSet.isNotEmpty;
  }*/

