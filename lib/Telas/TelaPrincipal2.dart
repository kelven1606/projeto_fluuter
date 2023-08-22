import 'package:flutter/material.dart';
import 'package:libras2/Telas/TelaPrincipal.dart';

import 'TelaConfiguracoes.dart';

class TelaPrincipal2 extends StatefulWidget {
  const TelaPrincipal2({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal2> createState() => _TelaPrincipal2State();
}

class _TelaPrincipal2State extends State<TelaPrincipal2> {
  int selectedIndex = 0;
  var lista = [TelaPrincipal(), TelaConfiguracoes()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: lista[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: "Inicio",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Ajustes",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
