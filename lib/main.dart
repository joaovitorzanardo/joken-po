import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var gameResult = "";
  var valueSelectedByGame = 'assets/padrao.png';

  final options = <String> ['assets/pedra.png', 'assets/papel.png', 'assets/tesoura.png'];

  final int pedra = 0;
  final int papel = 1;
  final int tesoura = 2;

  void playPedra() {
    int value = Random().nextInt(3);
    String result = "";

    if (value == pedra) {
      result = "Empatamos ;)";
    } else if (value == papel) {
      result = "Chora, eu ganhei hahaha";
    } else {
      result = "Você ganhou :(";
    }

    setState(() {
      gameResult = result;
      valueSelectedByGame = options[value];
    });
  }

  void playPapel() {
    int value = Random().nextInt(3);
    String result = "";

    if (value == papel) {
      result = "Empatamos ;)";
    } else if (value == tesoura) {
      result = "Chora, eu ganhei hahaha";
    } else {
      result = "Você ganhou :(";
    }

    setState(() {
      gameResult = result;
      valueSelectedByGame = options[value];
    });
  }

  void playTesoura() {
    int value = Random().nextInt(3);
    String result = "";

    if (value == tesoura) {
      result = "Empatamos ;)";
    } else if (value == pedra) {
      result = "Chora, eu ganhei hahaha";
    } else  {
      result = "Você ganhou :(";
    }

    setState(() {
      gameResult = result;
      valueSelectedByGame = options[value];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("JokenPo", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
          ),
          backgroundColor: Color.fromRGBO(33, 150, 243, 1),
          elevation: 50.0,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Text("Escolha do App"),
              )
            ),

            Center(
              child: Container(
                child: Image.asset(valueSelectedByGame, height: 90, width: 90),
              )
            ),

            Center(
              child: Container(
                child: Text(gameResult, style: TextStyle(fontWeight: FontWeight.bold))
              )
            ),

            Center(
              child: Container(
                child: Text("Escolha uma das opções abaixo"),
              )
            ),
            
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap: () => playPedra(),
                    child: Container(
                        child: Image.asset('assets/pedra.png', height: 90, width: 90),
                      ),
                  ),

                  GestureDetector(
                    onTap: () => playPapel(),
                    child: Container(
                        child: Image.asset('assets/papel.png', height: 90, width: 90),
                      ),
                  ),

                  GestureDetector(
                    onTap: () => playTesoura(),
                    child: Container(
                        child: Image.asset('assets/tesoura.png', height: 90, width: 90),
                      ),
                  ),
                ],
              )             
            
            )
          ],
        ),
      ),
    );
  }
}