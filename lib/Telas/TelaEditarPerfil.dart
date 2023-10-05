


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editar_Perfil extends StatefulWidget {
  const Editar_Perfil({Key? key}) : super(key: key);
  @override
  State<Editar_Perfil> createState() => _Editar_PerfilState();
}


class _Editar_PerfilState extends State<Editar_Perfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: ListView(
          children: [
            buildConfiguracao(context),
          ],
        ),
      ),
    );
  }
}


buildAppBar() {
  return AppBar(
    title: Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Conta',
          style: TextStyle(fontSize: 25),
        ),
      ],
    ),
    backgroundColor: Colors.purple,
  );
}


buildConfiguracao(context) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: buildColumnText(context)),
      ],
    ),
  );
}


buildColumnText(context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      color: Colors.white,
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(10.0)),
          SizedBox(
            height: 125,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://crn10.org.br/novo/wp-content/uploads/2021/10/perfil-300x300-5.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {},
            child: Text(
              'MUDAR FOTO',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(height: 25),
          Text(
            'Nome de Usuário',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextFormField(),
          SizedBox(height: 25),
          Text(
            'Biografia',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextFormField(),
          SizedBox(height: 25),
          Text(
            'E-mail',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextFormField(),
          SizedBox(height: 25),
          Text(
            'Senha',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextFormField(),
          SizedBox(width: 25, height: 25),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {},
            child: Text(
              'SALVAR',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    ),
  );
}
