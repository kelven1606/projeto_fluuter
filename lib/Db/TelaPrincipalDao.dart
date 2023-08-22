import '../domain/Principal.dart';

class TelaPrincipalDao {
  int cont = 0;
  List<Principal> listPrincipal = [
    Principal(
      imagealfabeto: "assets/image/alfabeto.png",
      imageNumero1: 'assets/image/numero-um.png',
      imagePraticando: "assets/image/praticando.png",
      imageSinal: "assets/image/sinal.png",
      imageHand: 'assets/image/Hand.png',
      label1: "Alfabeto",
      label2: "Números",
      label3: "Gestos",
      label4: "Praticando",
    )
  ];
  Future<List<Principal>> findAll() async {
    await Future.delayed(Duration(seconds: 5));
    return listPrincipal;
  }
}
