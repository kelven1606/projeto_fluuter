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
      if (cont < 10) cont++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Pergunta $cont de 10",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Qual a primeira letra do nome da fruta abaixo?"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset("assets/image/maca.jpg",
                      cacheHeight: 120, cacheWidth: 120),
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
                      child: Image.asset("assets/image/a - copia.png",
                          cacheHeight: 100, cacheWidth: 100),
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
                      child: Image.asset("assets/image/d - copia.png",
                          cacheHeight: 100, cacheWidth: 100),
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
                      child: Image.asset("assets/image/m - copia.png",
                          cacheHeight: 100, cacheWidth: 100),
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
                      child: Image.asset("assets/image/n - copia.png",
                          cacheHeight: 100, cacheWidth: 100),
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      incrementcont();
                    },
                    child: Text("próxima"))
              ],
            )),
      ),
    );
  }
}
