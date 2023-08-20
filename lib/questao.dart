// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  String texto;
  Questao(this.texto, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
