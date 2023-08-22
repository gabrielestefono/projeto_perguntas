import 'package:flutter/material.dart';
import "./questao.dart";
import "./resposta.dart";
import "./resultado.dart";

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
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

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()["respostas"]
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Perguntas",
          ),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(
                    _perguntas[_perguntaSelecionada].cast()["texto"],
                  ),
                  ...respostas.map((t) => Resposta(t, _responder)).toList()
                ],
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
