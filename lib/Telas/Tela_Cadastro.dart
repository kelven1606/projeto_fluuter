import 'package:flutter/material.dart';
import 'package:libras2/domain/Cadastros.dart';

import '../Db/CadastroDao.dart';
import 'TelaPrincipal.dart';

class Tela_Cadastro extends StatefulWidget {
  Tela_Cadastro({super.key});

  @override
  State<Tela_Cadastro> createState() => _Tela_CadastroState();
}

class _Tela_CadastroState extends State<Tela_Cadastro> {
  bool confirmeSenha = true;
  bool confirmeSenha1 = true;

  Future<List<Cadastros>> futureLista = CadastroDao().findAll();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.purple,
          title: Text(
            'Cadastrar-se',
            style: TextStyle(fontSize: 26),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.all(60),
            child: FutureBuilder<List<Cadastros>>(
              future: futureLista,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Cadastros> lista = snapshot.data!;
                  return buildListView(lista[0]);
                }

                return Center(child: CircularProgressIndicator());
              },
            )),
      ),
    );
  }

  buildListView(Cadastros cadastro) {
    return ListView(
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              labelText: "Nome",
              prefixIcon: Padding(
                child: Icon(Icons.person, color: Colors.purple),
                padding: EdgeInsets.all(5),
              ),
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        /*TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              labelText: cadastro.sobrenome,
              prefixIcon: Padding(
                child: Icon(Icons.person, color: Colors.purple),
                padding: EdgeInsets.all(5),
              ),
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          style: TextStyle(fontSize: 20),
        ),*/
        SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              labelText: cadastro.email,
              prefixIcon: const Padding(
                child: Icon(Icons.email, color: Colors.purple),
                padding: EdgeInsets.all(5),
              ),
              labelStyle: const TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.text,
          obscureText: confirmeSenha1,
          decoration: InputDecoration(
              suffixIcon: InkWell(
                // serve para deixar o icone cliclável
                child: Icon(
                  confirmeSenha1
                      ? Icons.remove_red_eye_outlined
                      : Icons.remove_red_eye,
                  color: Colors.purple,
                ),
                onTap: () {
                  // ! => Mudar de true ´/ false ou de false p/ true
                  setState(() {
                    //serve para avisar o flutter que a tela atualizou, não funciona com a tela statele, só statful
                    confirmeSenha1 = !confirmeSenha1;
                  });
                },
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              labelText: "Crie uma senha",
              prefixIcon: const Padding(
                child: const Icon(Icons.key, color: Colors.purple),
                padding: EdgeInsets.all(5),
              ),
              labelStyle: const TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        TextFormField(
          keyboardType: TextInputType.text,
          obscureText: confirmeSenha,
          decoration: InputDecoration(
              suffixIcon: InkWell(
                // serve para deixar o icone cliclável
                child: Icon(
                  confirmeSenha
                      ? Icons.remove_red_eye_outlined
                      : Icons.remove_red_eye,
                  color: Colors.purple,
                ),
                onTap: () {
                  // ! => Mudar de true ´/ false ou de false p/ true
                  setState(() {
                    //serve para avisar o flutter que a tela atualizou, não funciona com a tela statele, só statful
                    confirmeSenha = !confirmeSenha;
                  });
                },
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              labelText: "Confirme sua senha",
              prefixIcon: const Padding(
                child: const Icon(Icons.key, color: Colors.purple),
                padding: EdgeInsets.all(5),
              ),
              labelStyle: const TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 60),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          //style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),//
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TelaPrincipal(),
              ),
            );
          },
          child: const Text(
            'Cadastrar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
