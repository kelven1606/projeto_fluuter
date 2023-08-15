import 'package:flutter/material.dart';
import '../Db/PerfisDao.dart';
import '../domain/Perfis.dart';

class Perfil extends StatefulWidget {
  Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  Future<List<Perfis>> futureLista = PerfisDao().findAll();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.purple,
          title: Text(
            'Perfil',
            style: TextStyle(fontSize: 26),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.all(10),
            child: FutureBuilder<List<Perfis>>(
              future: futureLista,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Perfis> lista = snapshot.data!;
                  return buildListView(lista[0]);
                }

                return Center(child: CircularProgressIndicator());
              },
            )),
      ),
    );
  }

  buildListView(Perfis perfis) {
    return ListView(
      children: <Widget>[
        Container(
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
                  child: Image.network(
                    perfis.imagem,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 19),
              Text(
                perfis.nome_usuario,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(),
              SizedBox(height: 19),
              Text(
                perfis.biografia,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(),
              SizedBox(height: 70),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {},
                child: Text(
                  'EDITAR PERFIL',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
