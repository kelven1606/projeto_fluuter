import 'package:flutter/material.dart';
import 'package:libras2/Telas/tela_cadastro.dart';
import 'package:libras2/domain/Cadastros.dart';

class CadastroDao {
  var listCadastro = [
    Cadastros(
      nome: "Nome",
      sobrenome: "Sobrenome",
      email: "Email",
      senha1: "Crie uma senha",
      senha2: "Confirme sua senha",
    ),
  ];

  Future<List<Cadastros>> findAll() async {
    await Future.delayed(Duration(seconds: 3));
    return listCadastro;
  }
}
