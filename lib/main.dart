import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Resposta #01!!!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder, child: Text("Resposta 1")),
            ElevatedButton(
                onPressed: () {
                  print("Resposta #02!!!");
                },
                child: Text("Resposta 2")),
            ElevatedButton(
                onPressed: () => print("Resposta #03!!!"),
                child: Text("Resposta 3"))
          ],
        ),
      ),
    );
  }
}
