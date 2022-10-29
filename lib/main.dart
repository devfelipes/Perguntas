import 'package:flutter/material.dart';
import 'package:perguntas/botao.dart';
import 'package:perguntas/questao.dart';

main() => runApp(const PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var respota = 0;

  void responder() {
    setState(() {
      respota++;
    });
    // ignore: avoid_print
    print(respota);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> pergunta = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(pergunta.elementAt(respota)),
            const Botao('Resposta 1'),
            const Botao('Resposta 2'),
            const Botao('Resposta 3'),
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
