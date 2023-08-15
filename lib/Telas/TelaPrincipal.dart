import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:libras2/Telas/tela_configuracoes.dart';
import 'package:libras2/Telas/tela_jogo.dart';

import '../db/TelaPrincipalDao.dart';
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
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Hand Signals"),
            backgroundColor: Colors.purple,
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
                return const Center(child: CircularProgressIndicator(
                  color: Colors.purple,
                ));
              })),
    );
  }
}
