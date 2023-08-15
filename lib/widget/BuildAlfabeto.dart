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
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SizedBox(
            child: Image.network(
              widget.pacote.imagem,
            ),
          ),
        ],
      ),
    );
  }
}
