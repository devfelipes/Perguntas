import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Botao extends StatelessWidget {
  final String text;
  final void Function() onSelect;

  const Botao(this.text, this.onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(1),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white70,
          ),
          onPressed: onSelect,
          child: Text(text)),
    );
  }
}
