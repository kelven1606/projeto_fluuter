import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../Db/AlfabetoDAO.dart';
import '../domain/PacoteAlfabeto.dart';
import '../widget/BuildAlfabeto.dart';

class Alfabeto extends StatefulWidget {
  const Alfabeto({Key? key}) : super(key: key);

  @override
  State<Alfabeto> createState() => _AlfabetoState();
}

class _AlfabetoState extends State<Alfabeto> {
  Future<List<PacoteAlfabeto>> futureLista = AlfabetoDAO().findAll();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Alfabeto"),
          backgroundColor: Colors.purple,
        ),
        body: FutureBuilder<List<PacoteAlfabeto>>(
          future: futureLista,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              /* Verifica se o snapshot tem dados disponíveis. 
                Isso significa que o futureLista foi concluído e possui dados para exibir*/
              var lista = snapshot.data!;
              /*Se houver dados no snapshot, a lista de 
                  objetos PacoteAlfabeto é atribuída à variável lista*/
              return ListView.builder(
                  /* usado para construir a lista de pacotes de
                   alfabeto com base nos dados disponíveis.*/
                  shrinkWrap: true,
                  /*ListView encolha para se ajustar ao tamanho dos itens na lista interna.*/
                  ////physics: const NeverScrollableScrollPhysics(),
                  itemCount: lista.length,
                  /*Define o número de itens na lista com base no tamanho da lista de pacotes de alfabeto.*/
                  itemBuilder: (context, index) {
                    return BuildAlfabeto(
                      pacote: lista[index],
                    );
                  });
            }
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.purple,
            ));
            /*Se o snapshot ainda não tiver dados, exibirá 
                um indicador de progresso no centro até que os dados sejam carregados.*/
          },
        ),
      ),
    );
  }
}
