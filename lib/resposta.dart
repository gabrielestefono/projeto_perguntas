import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  Resposta(this.texto, {super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(texto),
    );
  }
}
