import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Telas/alfabeto.dart';
import '../Telas/tela_jogo.dart';
import '../domain/Principal.dart';

class BuildBodyPrincipal extends StatefulWidget {
  final Principal principal;
  const BuildBodyPrincipal({Key? key, required this.principal})
      : super(key: key);

  @override
  State<BuildBodyPrincipal> createState() => _BuildBodyPrincipalState();
}

class _BuildBodyPrincipalState extends State<BuildBodyPrincipal> {
  Principal get p => widget.principal;
  @override
  Widget build(BuildContext context) {
    return buildbodyTelaPrincipal();
  }

  buildbodyTelaPrincipal() {
    return Container(
      child: Column(
        children: [
          Center(),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: SizedBox(
              height: 80,
              width: 75,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  p.imageHand,
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
              icon: Image.asset(p.imagealfabeto),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Alfabeto(),
                  ),
                );
              },
              label: Text(
                p.label1,
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
            icon: Image.asset(p.imageNumero1),
            onPressed: () {},
            label: Text(
              p.label2,
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
            icon: Image.asset(p.imageSinal),
            onPressed: () {},
            label: Text(
              p.label3,
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
            icon: Image.asset(p.imagePraticando),
            label: Text(
              p.label4,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TelaJogo(),
                ),
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
