import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("lib/imagens/padrao.png");

  void opcaoSelecionada(String escolhaUsuario) {
    List lista = ["Pedra", "Papel", "Papel"];
    var random = Random().nextInt(3);
    var escolhaApp = lista[random];
    switch (escolhaApp) {
      case "Pedra":
        setState(() {
          this._imagemApp = AssetImage("lib/imagens/pedra.png");
        });
        break;
      case "Papel":
        setState(() {
          this._imagemApp = AssetImage("lib/imagens/papel.png");
        });
        break;
      case "Tesoura":
        setState(() {
          this._imagemApp = AssetImage("lib/imagens/tesoura.png");
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JOKENPO"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image(image: this._imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => opcaoSelecionada("Pedra"),
                child: Image.asset(
                  "lib/imagens/pedra.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionada("Papel"),
                child: Image.asset(
                  "lib/imagens/papel.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionada("Tesoura"),
                child: Image.asset(
                  "lib/imagens/tesoura.png",
                  height: 100,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
