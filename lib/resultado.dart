import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao, {super.key});

  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 6){
      return 'Você acertou $pontuacao/10!\n Ficou abaixo da média, estude mais!!!';
    }
    else if(pontuacao < 9){
      return 'Você acertou $pontuacao/10!\n Parabéns!';
    }
    else {
      return 'Você acertou $pontuacao/10!\n Impressionante!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        textAlign: TextAlign.center, 
        style: TextStyle(fontSize: 28),
      )
    );
  }
}
