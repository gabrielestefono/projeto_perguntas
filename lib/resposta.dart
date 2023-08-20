import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  String textoResposta;
  Resposta(this.textoResposta, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ElevatedButton(
        onPressed: null,
        child: Text(textoResposta),
      ),
    );
  }
}
