import 'package:flutter/material.dart';
import 'package:perguntas/botao.dart';
import 'package:perguntas/questao.dart';

main() => runApp(const PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var respota = 0;

  final List<Map<String, Object>> _pergunta = const [
    {
      'texto': 'Qual sua comida favorita?',
      'resposta': ['Lasanha', 'Churrasco', 'Feijão', 'Galinha']
    },
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': ['Cachorro', 'Gato', 'Cobra', 'Leao']
    },
    {
      'texto': 'Qual sua cor favorita?',
      'resposta': ['Azul', 'Rosa', 'Branco', 'Preto']
    },
  ];

  void _responder() {
    if (verificacao) {
      setState(() {
        respota++;
      });
    }
  }

  bool get verificacao {
    return respota < _pergunta.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> resposta =
        verificacao ? _pergunta[respota].cast()['resposta'] : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: verificacao
            ? Column(
                children: <Widget>[
                  Questao(_pergunta[respota]['texto'].toString()),
                  ...resposta.map((t) => Botao(t, _responder)).toList()
                ],
              )
            : null,
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
