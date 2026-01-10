import 'package:flutter/material.dart';
import './app_bar.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto':
          'Qual framework é usado para criar apps multiplataforma com Dart?',
      'respostas': [
        {'texto': 'React', 'pontuacao': 0},
        {'texto' : 'Angular', 'pontuacao': 0},
        {'texto' : 'Flutter', 'pontuacao': 1},
        {'texto' : 'Vue', 'pontuacao': 0},
      ],
    },
    {
      'texto':
          'Como é chamado o principal elemento de construção da interface no Flutter',
      'respostas': [
        {'texto' : 'Classe', 'pontuacao': 0},
        {'texto' : 'Função', 'pontuacao': 0},
        {'texto' : 'Widget', 'pontuacao': 1},
        {'texto' : 'Pacote', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual widget inicial habilita o Material Design no app?',
      'respostas': [
        {'texto' : 'Scaffold', 'pontuacao': 0},
        {'texto' : 'Container', 'pontuacao': 0},
        {'texto' : 'MaterialApp', 'pontuacao': 1},
        {'texto' : 'Theme', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual widget fornece estrutura básica com AppBar e body?',
      'respostas': [
        {'texto' : 'Column', 'pontuacao': 0},
        {'texto' : 'Scaffold', 'pontuacao': 1},
        {'texto' : 'Stack', 'pontuacao': 0},
        {'texto' : 'Center', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual widget organiza elementos verticalmente?',
      'respostas': [
        {'texto' : 'Row', 'pontuacao': 0},
        {'texto' : 'Stack', 'pontuacao': 0},
        {'texto' : 'Column', 'pontuacao': 1},
        {'texto' : 'Align', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual método atualiza a interface em um StatefulWidget?',
      'respostas': [
        {'texto' : 'build', 'pontuacao': 0},
        {'texto' : 'update', 'pontuacao': 0},
        {'texto' : 'refresh', 'pontuacao': 0},
        {'texto' : 'setState', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual tipo de widget permite mudança de estado?',
      'respostas': [
        {'texto' : 'Stateless', 'pontuacao': 0},
        {'texto' : 'Stateful', 'pontuacao': 1},
        {'texto' : 'Inherited', 'pontuacao': 0},
        {'texto' : 'Proxy', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual widget cria um botão elevado no Flutter?',
      'respostas': [
        {'texto' : 'TextButton', 'pontuacao': 0},
        {'texto' : 'IconButton', 'pontuacao': 0},
        {'texto' : 'FloatingActionButton', 'pontuacao': 0},
        {'texto' : 'ElevatedButton', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual comando executa o app Flutter no dispositivo?',
      'respostas': [
        {'texto' : 'create', 'pontuacao': 0},
        {'texto' : 'build', 'pontuacao': 0},
        {'texto' : 'install', 'pontuacao': 0},
        {'texto' : 'run', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual widget é usado para adicionar espaçamento externo?',
      'respostas': [
        {'texto' : 'Padding', 'pontuacao': 1},
        {'texto' : 'Margin', 'pontuacao': 0},
        {'texto' : 'SizedBox', 'pontuacao': 0},
        {'texto' : 'Spacer', 'pontuacao': 0},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBarPerguntas(titulo: 'Perguntas Básicas'),
        body: temPerguntaSelecionada
            ? Questionario(perguntaSelecionada: _perguntaSelecionada, perguntas: _perguntas, responder: _responder)
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({super.key});

  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
