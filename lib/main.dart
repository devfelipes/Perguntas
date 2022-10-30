import 'package:flutter/material.dart';
import 'package:perguntas/questionario.dart';
import 'package:perguntas/resultado.dart';

main() => runApp(const PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;
  var pontuacao = 0;
  final List<Map<String, Object>> _pergunta = const [
    {
      'texto': 'Qual sua comida favorita?',
      'resposta': [
        {'texto': 'Lasanha', 'pontuacao': 10},
        {'texto': 'Churrasco', 'pontuacao': 5},
        {'texto': 'Feijão', 'pontuacao': 3},
        {'texto': 'Galinha', 'pontuacao': 6},
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 5},
        {'texto': 'Cobra', 'pontuacao': 3},
        {'texto': 'Leao', 'pontuacao': 6},
      ]
    },
    {
      'texto': 'Qual sua cor favorita?',
      'resposta': [
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Rosa', 'pontuacao': 5},
        {'texto': 'Branco', 'pontuacao': 3},
        {'texto': 'Preto', 'pontuacao': 6},
      ]
    },
  ];

  void _responder(int pontuacao) {
    if (verificacao) {
      setState(() {
        perguntaSelecionada++;
        this.pontuacao += pontuacao;
      });
    }
  }

  bool get verificacao {
    return perguntaSelecionada < _pergunta.length;
  }

  void _reiniciar() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacao = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Perguntas',
            ),
          ),
        ),
        body: verificacao
            ? Questionario(
                pergunta: _pergunta,
                responder: _responder,
                perguntaSelecionada: perguntaSelecionada)
            : Resultado(pontuacao: pontuacao, reiniciar: _reiniciar),
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
