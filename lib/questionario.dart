import 'package:flutter/cupertino.dart';
import 'package:perguntas/questao.dart';

import 'botao.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> pergunta;
  final void Function(int) responder;

  bool get verificacao {
    return perguntaSelecionada < pergunta.length;
  }

  const Questionario({
    super.key,
    required this.pergunta,
    required this.responder,
    required this.perguntaSelecionada,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> resposta = verificacao
        ? pergunta[perguntaSelecionada]['resposta'] as List<Map<String, Object>>
        : [];

    return Column(children: <Widget>[
      Questao(pergunta[perguntaSelecionada]['texto'].toString()),
      ...resposta
          .map((resp) => Botao(resp['texto'] as String,
              () => responder(resp['pontuacao'] as int)))
          .toList()
    ]);
  }
}
