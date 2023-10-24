import 'package:flutter/material.dart';

import '../Telas/TelaEditarPerfil.dart';
import '../domain/Perfis.dart';

class buildTelaPerfil extends StatefulWidget {
  final Perfis perfil;
  const buildTelaPerfil({super.key, required this.perfil});

  @override
  State<buildTelaPerfil> createState() => _buildTelaPerfilState();
}

class _buildTelaPerfilState extends State<buildTelaPerfil> {
  Perfis get p => widget.perfil;
  @override
  Widget build(BuildContext context) {
    return buildListView();
  }

  buildListView() {
    return Container(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(5),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.all(10.0)),
            SizedBox(
              height: 150,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  p.imagem,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 19),
            Text(
              p.nome_usuario,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(),
            SizedBox(height: 19),
            Text(
              p.biografia,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(),
            SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Editar_Perfil();
                    },
                  ),
                );
              },
              child: Text(
                'EDITAR PERFIL',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
