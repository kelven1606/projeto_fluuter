import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:libras2/Db/JogoalfabetoDAO.dart';
import 'package:libras2/domain/jogoalfabetoJson.dart';

import '../widget/jogoalfabeto.dart';

class Telajogoalfabeto extends StatefulWidget {
  const Telajogoalfabeto({super.key});

  @override
  State<Telajogoalfabeto> createState() => _TelajogoalfabetoState();
}

class _TelajogoalfabetoState extends State<Telajogoalfabeto> {
  @override
  Widget build(BuildContext context) {
    int cont = 1;
    Future<List<jogoalfabetoJson>> futureLista =
        JogoalfabetoDAO().alfabeto(id: cont);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Home"),
      ),
      body: FutureBuilder<List<jogoalfabetoJson>>(
        future: futureLista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var lista = snapshot.data!;
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return jogoalfabeto(
                  jogo: lista[index],
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
