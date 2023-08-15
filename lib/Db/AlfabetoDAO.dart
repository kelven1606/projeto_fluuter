import '../domain/PacoteAlfabeto.dart';

class AlfabetoDAO {
  var listPacotes = const [
    PacoteAlfabeto(
        imagem:
            'assets/image/alfabeto2.png'),
  ];

  Future<List<PacoteAlfabeto>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    return listPacotes;
  }
}
