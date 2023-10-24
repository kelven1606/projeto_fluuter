import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libras2/Telas/tela_login.dart';

import '../Db/Shared_prefs.dart';
import '../Db/TelaPrincipalDao.dart';
import '../domain/Principal.dart';
import '../widget/BuildbodyPrincipal.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Future<List<Principal>> futureLista = TelaPrincipalDao().findAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("Home"),
          actions: [
            IconButton(
              onPressed: () {
                SharedPrefs().setUser(false);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TelaDeLogin();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: FutureBuilder<List<Principal>>(
            future: futureLista,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                /* Verifica se o snapshot tem dados disponíveis. 
                Isso significa que o futureLista foi concluído e possui dados para exibir*/
                var lista = snapshot.data!;
                return ListView.builder(
                    ////physics: const NeverScrollableScrollPhysics(),
                    itemCount: lista.length,
                    itemBuilder: (context, index) {
                      return BuildBodyPrincipal(
                        principal: lista[index],
                      );
                    });
              }
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.purple,
              ));
            }));
  }
}
