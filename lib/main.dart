import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());

  // int idade = 30;
  //if (idade >= 18) {
  // print('pode entrar');
  // } else if (idade >= 16) {
  //  print('pode entrar acompanhado');
  //} else {
  // print('não pode rapaz');
  //}
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color cor = Colors.red;
  String texto = ('House Mafia');
  TextEditingController controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 400,
              height: 400,
              color: cor,
              child: Text(texto),
            ),
            TextField(
              controller: controlador,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    texto = controlador.text;
                    if (cor == Colors.red) {
                      cor = Colors.blue;
                    } else {
                      cor = Colors.red;
                    }
                  });
                },
                child: Text('Mudar de cor'))
          ],
        ),
      ),
    ));
  }
}
