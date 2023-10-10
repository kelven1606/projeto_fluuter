import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:libras2/Telas/tela_perfil.dart';

class TelaConfiguracoes extends StatefulWidget {
  const TelaConfiguracoes({Key? key}) : super(key: key);
  @override
  State<TelaConfiguracoes> createState() => _TelaConfiguracoesState();
}

class _TelaConfiguracoesState extends State<TelaConfiguracoes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: ListView(
          children: [
            buildConfiguracao(context),
            buildConfiguracao2(),
            buildConfiguracao3(),
            buildConfiguracao4(),
            buildConfiguracao5(),
            buildConfiguracao6(),
            buildConfiguracao7(),
          ],
        ),
      ),
    );
  }
}

buildAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          'Configurações',
          style: TextStyle(fontSize: 25),
        ),
      ],
    ),
    centerTitle: false,
    backgroundColor: Colors.purple,
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    ],
  );
}

buildConfiguracao(context) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return tela_perfil();
          },
        ),
      );
    },
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.account_circle),
              SizedBox(width: 4),
              Text(
                'Perfil',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

buildConfiguracao2() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: buildColumnText2()),
      ],
    ),
  );
}

buildColumnText2() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.lock),
              SizedBox(width: 4),
              Text(
                'Privacidade',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

buildConfiguracao3() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: buildColumnText3()),
      ],
    ),
  );
}

buildColumnText3() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.notifications),
              SizedBox(width: 4),
              Text(
                'Notificações',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

buildConfiguracao4() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: buildColumnText4()),
      ],
    ),
  );
}

buildColumnText4() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.people),
              SizedBox(width: 4),
              Text(
                'Convidar amigos',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

buildConfiguracao5() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: buildColumnText5()),
      ],
    ),
  );
}

buildColumnText5() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.help_outline),
              SizedBox(width: 4),
              Text(
                'Ajuda',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

buildConfiguracao6() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: buildColumnText6()),
      ],
    ),
  );
}

buildColumnText6() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.info),
              SizedBox(width: 4),
              Text(
                'Sobre',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

buildConfiguracao7() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: buildColumnText7()),
      ],
    ),
  );
}

buildColumnText7() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.logout),
              SizedBox(width: 4),
              Text(
                'Sair',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
