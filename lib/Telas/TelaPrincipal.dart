import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:libras2/Telas/tela_configuracoes.dart';
import 'package:libras2/Telas/tela_jogo.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        buildbodyTelaPrincipal(),
      ),
      appBar: AppBar(
        title: Text("Hand Signals"),
        backgroundColor: Colors.purple,
      ),
    );
  }

  buildbodyTelaPrincipal(){
    return  Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Center(),
              Container(
                child: SizedBox(
                  height: 80,
                  width: 75,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6bGPC0qxxlYN7oi0UiVH5Kjqrh1RGzOPpyFT-gXK1NDj4PSvIz5sDaHq2-lhKn__52kk&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    fixedSize: Size(190, 50),
                  ),
                  icon: Image.asset("assets/image/alfabeto.png"),
                  onPressed: () {},
                  label: Text(
                    "Alfabeto",
                    style: TextStyle(fontSize: 18),
                  )),
              SizedBox(
                height: 30,
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  fixedSize: Size(190, 50),
                ),
                icon: Image.asset('assets/image/numero-um.png'),
                onPressed: () {},
                label: Text(
                  "Números",
                  style: TextStyle(fontSize: 18),
                ),

              ),
              SizedBox(
                height: 30,
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  fixedSize: Size(190, 50),
                ),
                icon: Image.asset("assets/image/sinal.png"),
                onPressed: () {},
                label: Text(
                  "Gestos",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              ElevatedButton.icon( 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  fixedSize: Size(190, 50),
                ),
               icon : Image.asset("assets/image/praticando.png"),
                label: Text(
                  "Praticando",
                  style: TextStyle(fontSize: 18,),
                                  ),
                
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TelaJogo(),
                    ),
                  );
                },
              ),

              SizedBox(height: 30,),


              ElevatedButton.icon( 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  fixedSize: Size(190, 50),
                ),
               icon : Image.asset("assets/image/engrenagem.png"),
                label: Text(
                  "Configurações",
                  style: TextStyle(fontSize: 18,),
                                  ),
                
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TelaConfiguracoes(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
  }
}

