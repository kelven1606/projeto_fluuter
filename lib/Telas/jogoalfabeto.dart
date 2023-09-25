import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class jogoalfabeto extends StatefulWidget {
  const jogoalfabeto({super.key});

  @override
  State<jogoalfabeto> createState() => _jogoalfabetoState();
}

class _jogoalfabetoState extends State<jogoalfabeto> {
  int cont = 1;

  void incrementcont() {
    setState(() {
      cont++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            
        children: [
          Text("Pergunta $cont de 10"),
          ElevatedButton(onPressed:(){
            incrementcont();
          }, child:Text("Passar") 
          )
          ],
          
      )
      
    
      ),
      
    );
  }
}
