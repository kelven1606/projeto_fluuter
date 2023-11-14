import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libras2/Db/JogoalfabetoDAO.dart';
import 'package:libras2/Db/Shared_prefs.dart';
import 'package:libras2/Telas/bloc/jogo_cubit.dart';
import 'package:libras2/domain/jogoalfabetoJson.dart';

import '../widget/jogoalfabeto.dart';

class Telajogoalfabeto extends StatefulWidget {
  const Telajogoalfabeto({super.key});

  @override
  State<Telajogoalfabeto> createState() => _TelajogoalfabetoState();
}

class _TelajogoalfabetoState extends State<Telajogoalfabeto> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Home"),
      ),
      body: BlocBuilder<JogoCubit, int>(
        builder: (context, index) {
          Future<jogoalfabetoJson> futureLista =
              JogoalfabetoDAO().alfabeto(id: index);

          return FutureBuilder<jogoalfabetoJson>(
            future: futureLista,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return jogoalfabeto(
                  jogo: snapshot.data!,
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
