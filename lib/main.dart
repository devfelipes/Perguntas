import 'package:flutter/material.dart';

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
            Text(pergunta.elementAt(respota)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.blue,
                ),
                onPressed: responder,
                child: const Text('Resposta 1')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.blue,
                ),
                onPressed: responder,
                child: const Text('Resposta 2')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.blue,
                ),
                onPressed: responder,
                child: const Text('Resposta 3')),
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
