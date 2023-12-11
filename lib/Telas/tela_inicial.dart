import 'package:flutter/material.dart';
import 'package:libras2/Db/Banco.dart';
import 'package:libras2/Db/JogoalfabetoDAO.dart';
import 'package:libras2/Db/PerfisDao.dart';
import 'package:libras2/Telas/TelaPrincipal2.dart';
import '../Db/Shared_prefs.dart';
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
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const TelaPrincipal2();
          },
        ),
      );
    } else {
      // ignore: use_build_context_synchronously
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
    JogoalfabetoDAO().findall();
    PerfisDao().findAll();
    Banco().banco();
  }

  @override
  Widget build(BuildContext context) {
    Banco b = Banco();
    b.banco;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 79, 9, 92),
        body: buildContainer(),
      ),
    );
  }

  buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6bGPC0qxxlYN7oi0UiVH5Kjqrh1RGzOPpyFT-gXK1NDj4PSvIz5sDaHq2-lhKn__52kk&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 48),
            const Text(
              'Hand Signals',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
