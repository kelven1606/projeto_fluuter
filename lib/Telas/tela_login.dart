import 'package:flutter/material.dart';
import 'package:libras2/Telas/Tela_Cadastro.dart';
import '../Db/CadastroDao.dart';
import 'TelaPrincipal2.dart';

class TelaDeLogin extends StatefulWidget {
  const TelaDeLogin({super.key});
  _TelaPrinciaplState createState() => _TelaPrinciaplState();
}

class _TelaPrinciaplState extends State<TelaDeLogin> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.purple,
          title: Text(
            'Fazer Login',
            style: TextStyle(fontSize: 26),
          ),
        ),
        backgroundColor: Colors.white, //-> cor de fundo
        body: Container(
          padding: EdgeInsets.only(
            top: 60,
            left: 60,
            right: 60,
          ),
          child: ListView(
            children: <Widget>[
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
              SizedBox(height: 19),
              TextFormField(
                //permitem que os usuários digitem texto em um aplicativo.
                keyboardType: TextInputType
                    .emailAddress, //-> faz com que apareça o @ no teclado - pode ser de diversos tipos, como number, phone, text, emailAddress
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    // muda a cor da barra de digitar
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.purple),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    // deixa a barra na cor escolhida quando clicavel
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.purple),
                  ),
                  labelText: "E-mail",
                  prefixIcon: Padding(
                    child: Icon(Icons.email, color: Colors.purple),
                    padding: EdgeInsets.all(5),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
                controller: userController,
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.purple),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.purple),
                  ),
                  labelText: "Senha",
                  prefixIcon: Padding(
                    child: Icon(Icons.key, color: Colors.purple),
                    padding: EdgeInsets.all(5),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
                controller: passwordController,
              ),
              SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  onPressed();
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onPressed() async {
    String user = userController.text;
    String password = passwordController.text;

    bool result =
        await CadastroDao().autenticar(user: user, password: password);
    if (result) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return TelaPrincipal2();
          },
        ),
      );
    } else {
      final snackBar = SnackBar(
        content: Text('Usuário e/ou senha incorretos!'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
