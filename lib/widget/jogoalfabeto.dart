import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libras2/Db/Shared_prefs.dart';
import 'package:libras2/Telas/bloc/acertos_cubit.dart';
import 'package:libras2/Telas/bloc/erro_cubit.dart';
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
  int _value = 1;
  String letra = "";
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
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
                onPressed: () {
                  verificaracerto();
                  incrementcont();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  // padding: EdgeInsetsDirectional.only(start: 50),
                ),
                child: const Text(
                  "Responder",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/image/gostar.png"),
                  BlocBuilder<acertos_cubit, int>(builder: (context, index) {
                    return Text(" Acertos: $index");
                  }),
                  SizedBox(width: 10),
                  Image.asset("assets/image/erro.png"),
                  BlocBuilder<erro_cubit, int>(builder: (context, index) {
                    return Text(" erros: $index");
                  }),
                    SizedBox(width: 10),
                  Image.asset("assets/image/usr.png"),
                  BlocBuilder<JogoCubit, int>(builder: (context, index) {
                    return Text(" Total: ${index - 1}");
                  }),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "  " + j.pergunta,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(j.imagem, cacheHeight: 120, cacheWidth: 120),
            ],
          ),
          Row(
            children: [
              Radio(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.purple),
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              Container(
                child:
                    Image.asset(j.resposta1, cacheHeight: 100, cacheWidth: 100),
              )
            ],
          ),
          Row(
            children: [
              Radio(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.purple),
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              Container(
                child:
                    Image.asset(j.resposta2, cacheHeight: 100, cacheWidth: 100),
              )
            ],
          ),
          Row(
            children: [
              Radio(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.purple),
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              Container(
                child:
                    Image.asset(j.resposta3, cacheHeight: 100, cacheWidth: 100),
              )
            ],
          ),
          Row(
            children: [
              Radio(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.purple),
                  value: 4,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              Container(
                child:
                    Image.asset(j.resposta4, cacheHeight: 100, cacheWidth: 100),
              ),
            ],
          ),
        ],
      ),
    );
  }

  converterAcerto() {
    switch (_value) {
      case 1:
        letra = "a";
        break;
      case 2:
        letra = "b";
        break;
      case 3:
        letra = "c";
        break;
      case 4:
        letra = "d";
        break;
    }
  }

  verificaracerto() {
    converterAcerto();
    if (letra == j.respostacerta) {
      context.read<acertos_cubit>().increment();
    }else{
       errocubit();
    }
  }

  errocubit() {
    context.read<erro_cubit>().increment();
  }
}
