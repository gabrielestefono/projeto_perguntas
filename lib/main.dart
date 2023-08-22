import 'package:flutter/material.dart';
import "./resultado.dart";
import './questionario.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Perguntas",
          ),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : const Resultado(),
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
