import 'package:flutter/material.dart';
import 'package:libras2/Db/CadastroDao.dart';
import 'package:libras2/Db/Banco.dart';
import 'package:libras2/Db/JogoalfabetoDAO.dart';
import 'package:libras2/Telas/TelaPrincipal2.dart';
import 'package:libras2/domain/Imagens.dart';
import 'package:libras2/domain/jogoalfabetoJson.dart';

import '../Db/Shared_prefs.dart';
import 'Tela_Cadastro.dart';
import 'tela_login.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  checkUserStatus() async {
    // Verificar se o User já fez login
    bool isLogged = await SharedPrefs().getUser();
    await Future.delayed(const Duration(seconds: 5));

    if (isLogged) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const TelaPrincipal2();
          },
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const TelaDeLogin();
          },
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    checkUserStatus();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        body: buildContainer(),
      ),
    );
  }

  buildContainer() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6bGPC0qxxlYN7oi0UiVH5Kjqrh1RGzOPpyFT-gXK1NDj4PSvIz5sDaHq2-lhKn__52kk&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 48),
          Text(
            'Hand Signals',
            style: TextStyle(
                color: Colors.purple,
                fontSize: 48,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
