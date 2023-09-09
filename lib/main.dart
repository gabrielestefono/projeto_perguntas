import 'package:flutter/material.dart';
import "./resultado.dart";
import './questionario.dart';

// 1 - Main roda app "PerguntaApp"
main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": [
        {"texto": "Verde", "pontuacao": 10},
        {"texto": "Vermelho", "pontuacao": 5},
        {"texto": "Azul", "pontuacao": 3},
        {"texto": "Preto", "pontuacao": 1},
      ],
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": [
        {"texto": "Coelho", "pontuacao": 10},
        {"texto": "Cobra", "pontuacao": 5},
        {"texto": "Elefante", "pontuacao": 3},
        {"texto": "Leão", "pontuacao": 1},
      ],
    },
    {
      "texto": "Qual é o seu professor favorito?",
      "respostas": [
        {"texto": "Gabriel", "pontuacao": 10},
        {"texto": "Maria", "pontuacao": 5},
        {"texto": "Leo", "pontuacao": 3},
        {"texto": "João", "pontuacao": 1},
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

// 2 - O App perguntaApp se extende de Widget com estado
class PerguntaApp extends StatefulWidget {
  // Definindo contrutor
  const PerguntaApp({super.key});
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
