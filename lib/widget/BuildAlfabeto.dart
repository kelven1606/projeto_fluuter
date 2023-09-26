import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/PacoteAlfabeto.dart';

class BuildAlfabeto extends StatefulWidget {
  final PacoteAlfabeto pacote;
  const BuildAlfabeto({Key? key, required this.pacote}) : super(key: key);

  @override
  State<BuildAlfabeto> createState() => _BuildAlfabetoState();
}

class _BuildAlfabetoState extends State<BuildAlfabeto> {
  @override
  Widget build(BuildContext context) {
    return buildContainer();
  }

  buildContainer() {
    return GridView.count(crossAxisCount: 2, children: [
      Container(
        child: Image.asset(
          widget.pacote.imagem,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem1,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem2,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem3,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem4,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem5,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem6,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem7,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem8,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem9,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem10,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem11,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem12,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem13,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem14,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem15,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem15,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem16,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem17,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem18,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem19,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem20,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem21,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem22,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem23,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem24,
        ),
      ),
      Container(
        child: Image.asset(
          widget.pacote.imagem25,
        ),
      ),
      Container(
        color: Colors.white70,
      ),
    ]);
  }
}
