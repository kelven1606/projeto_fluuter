import '../domain/PacoteAlfabeto.dart';

class AlfabetoDAO {
  var listPacotes = const [
    PacoteAlfabeto(
      imagem:  "assets/image/A.png",
      imagem1: "assets/image/B.png",
      imagem2: "assets/image/C.png",
      imagem3: "assets/image/D.png",
      imagem4: "assets/image/E.png",
      imagem5: "assets/image/F.png",
      imagem6: "assets/image/G.png",
      imagem7: "assets/image/H.png",
      imagem8: "assets/image/I.png",
      imagem9: "assets/image/J.png",
      imagem10:"assets/image/K.png",
      imagem11:"assets/image/L.png",
      imagem12:"assets/image/M.png",
      imagem13:"assets/image/N.png",
      imagem14:"assets/image/O.png",
      imagem15:"assets/image/P.png",
      imagem16:"assets/image/Q.png",
      imagem17:"assets/image/R.png",
      imagem18:"assets/image/S.png",
      imagem19:"assets/image/T.png",
      imagem20:"assets/image/U.png",
      imagem21:"assets/image/V.png",
      imagem22:"assets/image/W.png",
      imagem23:"assets/image/X.png",
      imagem24:"assets/image/Y.png",
      imagem25:"assets/image/Z.png",
    ),
  ];

  Future<List<PacoteAlfabeto>> findAll() async {
    await Future.delayed(const Duration(seconds: 3));
    return listPacotes;
  }
}
