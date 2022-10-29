import 'package:flutter/material.dart';
import 'package:perguntas/botao.dart';
import 'package:perguntas/questao.dart';

main() => runApp(const PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var respota = 0;

  void _responder() {
    setState(() {
      respota++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> pergunta = [
      {
        'texto': 'Qual sua comida favorita?',
        'respost': ['Lasanha', 'Churrasco', 'Feijão', 'Galinha']
      },
      {
        'texto': 'Qual seu animal favorito?',
        'respost': ['Cachorro', 'Gato', 'Cobra', 'Leao']
      },
      {
        'texto': 'Qual sua cor favorita?',
        'respost': ['Azul', 'Rosa', 'Branco', 'Preto']
      },
    ];
    List<Widget> resposta = [];
    for (String textoresposta in pergunta[respota].cast()['respost']) {
      resposta.add(Botao(textoresposta, _responder));
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(pergunta[respota]['texto'].toString()),
            ...resposta
          ],
        ),
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
