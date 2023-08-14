import 'package:libras2/Telas/TelaPrincipal.dart';

import '../domain/Principal.dart';

class TelaPrincipalDao {
  List<Principal> listPrincipal = [
    Principal(
      imagealfabeto: "assets/image/alfabeto.png",
      imageEngrenagem: "assets/image/engrenagem.png",
      imageNumero1: 'assets/image/numero-um.png',
      imagePraticando: "assets/image/praticando.png",
      imageSinal: "assets/image/sinal.png",
      imageHand: 'assets/image/Hand.jpg',
      label1: "Alfabeto",
      label2: "Números",
      label3: "Gestos",
      label4: "Praticando",
      label5: "Configurações",
    )
  ];
  Future<List<Principal>> findAll() async {
    await Future.delayed(Duration(seconds: 10));
    return listPrincipal;
  }
}
