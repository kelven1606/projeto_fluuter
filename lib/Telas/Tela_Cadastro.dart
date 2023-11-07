import 'dart:async';

import 'package:flutter/material.dart';
import 'package:libras2/domain/Cadastros.dart';
import '../Db/CadastroDao.dart';
import '../Db/address_api.dart';
import '../domain/address.dart';

class Tela_Cadastro extends StatefulWidget {
  Tela_Cadastro({super.key});

  @override
  State<Tela_Cadastro> createState() => _Tela_CadastroState();
}

class _Tela_CadastroState extends State<Tela_Cadastro> {
  bool confirmeSenha = true;
  bool confirmeSenha1 = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController senha2Controller = TextEditingController();
  TextEditingController cepController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  //Future<List<Cadastros>> futureLista = CadastroDao().findAll();

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
        body: Container(padding: EdgeInsets.all(60), child: buildListView()
            /*FutureBuilder<List<Cadastros>>(
              future: futureLista,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Cadastros> lista = snapshot.data!;
                  return (lista[0]);
                }

                return Center(child: CircularProgressIndicator());
              },
            )*/
            ),
      ),
    );
  }

  buildListView() {
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
          controller: nomeController,
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
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.purple),
              ),
              labelText: "Email",
              prefixIcon: Padding(
                child: Icon(Icons.email, color: Colors.purple),
                padding: EdgeInsets.all(5),
              ),
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          style: TextStyle(fontSize: 20),
          controller: emailController,
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
          controller: senhaController,
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
          controller: senha2Controller,
        ),
         const SizedBox(height: 16),
        Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: cepController,
                      decoration: const InputDecoration(
                        hintText: 'CEP',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(onPressed: cepOnPressed, icon: Icon(Icons.search))
                ],
              ),
        const SizedBox(height: 16),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  hintText: 'Endereço',
                  border: OutlineInputBorder(),
                ),
              ),
        SizedBox(height: 60),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          //style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),//
          onPressed: () {
            onpressed();
          },
          child: const Text(
            'Cadastrar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }

  Future<void> cepOnPressed() async {
    String cep = cepController.text;

    showLoadingDialog();
    await Future.delayed(const Duration(seconds: 3));
    Address? address = await AddressApi().findAddressByCep(cep);
    if (address != null) {
      addressController.text = '${address.street} - ${address.city}';
    } else {
      addressController.text = '';
      showSnackBar('Endereço não encontrado');
    }

    Navigator.pop(context);
  }

  showLoadingDialog() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(child: CircularProgressIndicator()),
              SizedBox(height: 16),
              Text('Carregando Endereço...')
            ],
          ),
        );
      },
    );
  }


  Future<void> onpressed() async {
    String email = emailController.text;
    String nome = nomeController.text;
    String senha = senhaController.text;
    String senha2 = senha2Controller.text;
    if (email != '' && nome != '' && senha != '' && senha2 != '') {
      if (senha == senha2) {
        Cadastros cadastros = Cadastros(nome: nome, email: email, senha: senha);
        CadastroDao().salvarUsuario(cadastros: cadastros);
        Navigator.pop(context);
      } else {
        final snackBar = SnackBar(
          content: Text('As senhas digitadas são divergentes!'),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      final snackBar2 = SnackBar(
        content: Text('Dados Incompletos!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar2);
      print("dados incompletos");
    }
  }

    void showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
