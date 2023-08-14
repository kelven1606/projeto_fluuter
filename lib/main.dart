import 'package:flutter/material.dart';
import 'package:libras2/Telas/TelaPrincipal.dart';
import 'package:libras2/Telas/tela_inicial.dart';
import 'package:libras2/Telas/tela_login.dart';
import 'package:libras2/db/TelaPrincipalDao.dart';
import 'package:libras2/domain/Principal.dart';

import 'Telas/tela_jogo.dart';
import 'Telas/tela_configuracoes.dart';

void main() {
  Principal principal;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaInicial(),
  ));
}
