import 'package:flutter/material.dart';
import "./questao.dart";
import "./resposta.dart";

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        "texto": "Qual é a sua cor favorita?",
        "respostas": [
          "Verde",
          "Vermelho",
          "Azul",
          "Preto",
        ],
      },
      {
        "texto": "Qual é o seu animal favorito?",
        "respostas": [
          "Coelho",
          "Cobra",
          "Elefante",
          "Leão",
        ],
      },
      {
        "texto": "Qual é o seu professor favorito?",
        "respostas": [
          "Maria",
          "Leo",
          "Gabriel",
          "João",
        ],
      }
    ];

    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()["respostas"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Perguntas",
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Questao(
              perguntas[_perguntaSelecionada].cast()["texto"],
            ),
            ...respostas.map((t) => Resposta(t, _responder)).toList()
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
