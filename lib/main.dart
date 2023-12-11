import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libras2/Telas/bloc/acertos_cubit.dart';
import 'package:libras2/Telas/bloc/erro_cubit.dart';
import 'package:libras2/Telas/bloc/jogo_cubit.dart';
import 'package:libras2/Telas/tela_inicial.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => JogoCubit()),
        BlocProvider(create: (_) => acertos_cubit()),
        BlocProvider(create: (_) => erro_cubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TelaInicial(),
      ),
    ),
  );
}
