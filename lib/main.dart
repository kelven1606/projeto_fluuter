import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libras2/Telas/bloc/jogo_cubit.dart';
import 'package:libras2/Telas/tela_inicial.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => JogoCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TelaInicial(),
      ),
    ),
  );
}
