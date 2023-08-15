import '../domain/Perfis.dart';

class PerfisDao {
  var listPerfil = const [
    Perfis(
      nome_usuario: "Nome de Usuário",
      biografia: "Biografia",
      imagem:
          'https://crn10.org.br/novo/wp-content/uploads/2021/10/perfil-300x300-5.jpg',
    ),
  ];

  Future<List<Perfis>> findAll() async {
    await Future.delayed(const Duration(seconds: 3));
    return listPerfil;
  }
}
