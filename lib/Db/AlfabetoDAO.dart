import '../domain/PacoteAlfabeto.dart';

class AlfabetoDAO {
  var listPacotes = const [
    PacoteAlfabeto(
        imagem:
            'https://www.libras.com.br/ct__images/artigos/alfabeto-manual/alfabeto-manual.png'),
  ];

  Future<List<PacoteAlfabeto>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    return listPacotes;
  }
}
