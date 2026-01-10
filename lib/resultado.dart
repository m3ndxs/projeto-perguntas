import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao, this.reiniciarQuestionario, {super.key});

  final int pontuacao;
  final void Function() reiniciarQuestionario;

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Center(
          child: Text(
            fraseResultado,
            textAlign: TextAlign.center, 
            style: TextStyle(fontSize: 28),
          )
        ),
        TextButton(
          onPressed: reiniciarQuestionario,
          style: TextButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 38, 57, 221),
          ),
          child: Text(
            'Reiniciar?', 
            style: TextStyle(
              fontSize: 22,
            ),  
          ),
        ), 
      ],
    );
  }
}
