import 'package:flutter/material.dart';
import 'package:libras2/Telas/Telajogoalfabeto.dart';

class TelaJogo extends StatefulWidget {
  const TelaJogo({super.key});
  _TelaJogoState createState() => _TelaJogoState();
}

class _TelaJogoState extends State<TelaJogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GridView.count(
            crossAxisCount: 2,
            /*childAspectRatio: 1.5,
            mainAxisSpacing: 1,
            crossAxisSpacing: 2,*/
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Telajogoalfabeto(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: CircleBorder(),
                  padding: EdgeInsetsDirectional.only(start: 50),
                ),
                child:
                    Text("Fase 1: \nAlfabeto", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black)),
              ),
              Container(),
              Container(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 197, 35, 226),
                    shape: CircleBorder(),
                    padding: EdgeInsetsDirectional.only(start: 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Fase 2: \nNúmeros",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: CircleBorder(),
                  padding: EdgeInsetsDirectional.only(start: 50),
                ),
                onPressed: () {},
                child: Text(
                  'Fase 3: frases',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(),
              Container(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: CircleBorder(),
                  padding: EdgeInsetsDirectional.only(start: 50),
                ),
                onPressed: () {},
                child: Text(
                  'Fase 4: Gestos',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.purple,
        title: Text(
          "COLOCANDO EM PRÁTICA...",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}
