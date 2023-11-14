import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libras2/Db/Shared_prefs.dart';
import 'package:libras2/Telas/bloc/jogo_cubit.dart';
import 'package:libras2/domain/jogoalfabetoJson.dart';

class jogoalfabeto extends StatefulWidget {
  final jogoalfabetoJson jogo;
  const jogoalfabeto({Key? key, required this.jogo}) : super(key: key);

  @override
  State<jogoalfabeto> createState() => _jogoalfabetoState();

  // ignore: use_key_in_widget_constructors, empty_constructor_bodies
}

// ignore: camel_case_types
class _jogoalfabetoState extends State<jogoalfabeto> {
  jogoalfabetoJson get j => widget.jogo;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildjogoalfabeto();
  }

  incrementcont() {
    context.read<JogoCubit>().increment();
  }

  buildjogoalfabeto() {
    return Container(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: BlocBuilder<JogoCubit, int>(
                  builder: (context, index) {
                    return Text(
                      "Pergunta $index de 10",
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(j.pergunta),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Image.asset(j.imagem, cacheHeight: 120, cacheWidth: 120),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("A"),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsetsDirectional.only(start: 0),
                ),
              ),
              Container(
                child:
                    Image.asset(j.resposta1, cacheHeight: 100, cacheWidth: 100),
              )
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("B"),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsetsDirectional.only(start: 0),
                ),
              ),
              Container(
                child:
                    Image.asset(j.resposta2, cacheHeight: 100, cacheWidth: 100),
              )
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("C"),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsetsDirectional.only(start: 0),
                ),
              ),
              Container(
                child:
                    Image.asset(j.resposta3, cacheHeight: 100, cacheWidth: 100),
              )
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("D"),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsetsDirectional.only(start: 0),
                ),
              ),
              Container(
                child:
                    Image.asset(j.resposta4, cacheHeight: 100, cacheWidth: 100),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ElevatedButton(
                onPressed: () {
                  incrementcont();
                },
                child: Text("próxima")),
          ),
        ],
      ),
    );
  }
}
