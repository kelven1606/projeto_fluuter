import 'package:libras2/Db/Banco.dart';
import 'package:sqflite/sqlite_api.dart';

import '../domain/Cadastros.dart';

class CadastroDao {
  findAll() async {
    Banco bd = Banco();
    Database db = await bd.banco();

    String sql = 'SELECT * FROM CADASTRO_USUARIO;';
    final resultSet = await db.rawQuery(sql);

    print('$resultSet');
  }

  salvarUsuario({required Cadastros cadastros}) async {
    Banco banco = Banco();
    Database db = await banco.banco();
    db.insert('CADASTRO_USUARIO', cadastros.toJson());
  }

  Future<bool> autenticar (
      {required String user, required String password}) async {
    Banco banco = Banco();
    Database db = await banco.banco();

    String sql =  'SELECT * FROM CADASTRO_USUARIO '
        'WHERE EMAIL = ? '
        'AND SENHA = ?;';

    final resultSet = await db.rawQuery(sql, [user, password]);

    return resultSet.isNotEmpty;
  }
}
