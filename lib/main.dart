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
        {"texto": "Verde", "nota": 10},
        {"texto": "Vermelho", "nota": 5},
        {"texto": "Azul", "nota": 3},
        {"texto": "Preto", "nota": 1},
      ],
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": [
        {"texto": "Coelho", "nota": 10},
        {"texto": "Cobra", "nota": 5},
        {"texto": "Elefante", "nota": 3},
        {"texto": "Leão", "nota": 1},
      ],
    },
    {
      "texto": "Qual é o seu professor favorito?",
      "respostas": [
        {"texto": "Gabriel", "nota": 10},
        {"texto": "Maria", "nota": 5},
        {"texto": "Leo", "nota": 3},
        {"texto": "João", "nota": 1},
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
