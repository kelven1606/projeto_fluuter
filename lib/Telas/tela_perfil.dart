


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libras2/widget/buildTelaPerfil.dart';

import '../Db/PerfisDao.dart';
import '../domain/Perfis.dart';

class tela_perfil extends StatefulWidget {
  tela_perfil({super.key});


  @override
  State<tela_perfil> createState() => _tela_perfilState();
}


class _tela_perfilState extends State<tela_perfil> {
  Future<List<Perfis>> futureLista = PerfisDao().findAll();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.purple,
          title: Text(
            'Perfil',
            style: TextStyle(fontSize: 26),
          ),
        ),
        backgroundColor: Colors.white,
        body:FutureBuilder<List<Perfis>>(
        future: futureLista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var lista = snapshot.data!;
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return buildTelaPerfil(
                  perfil: lista[index],
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    ));
  }
  }
