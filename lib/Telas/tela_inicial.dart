import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tela_login.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView(children: [buildContainer(), buildContainer2()]),
        ),
      ),
    );
  }

  buildContainer() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6bGPC0qxxlYN7oi0UiVH5Kjqrh1RGzOPpyFT-gXK1NDj4PSvIz5sDaHq2-lhKn__52kk&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 48),
          Text(
            'Hand Signals',
            style: TextStyle(
                color: Colors.purple,
                fontSize: 48,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  buildContainer2() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TelaDeLogin(),
            ),
            );
          },
          child: Text(
            'Entrar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          onPressed: () {},
          child: Text(
            'Cadastrar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ]),
    );
  }
}
