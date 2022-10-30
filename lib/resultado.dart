import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciar;

  const Resultado({
    required this.pontuacao,
    required this.reiniciar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Text(
          'Parabens!!!\nPontuação: $pontuacao',
          style: const TextStyle(fontSize: 28),
        )),
        ElevatedButton(
          onPressed: reiniciar,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white70,
          ),
          child: const Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
