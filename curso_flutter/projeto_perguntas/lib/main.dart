import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

// Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
/*
for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }
*/

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    }
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        _perguntas[_perguntaSelecionada].cast()['respostas'];
    // List<Widget> widgets =
    //     respostas.map((t) => Resposta(t, _responder)).toList();

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }x'

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return new PerguntaAppState();
  }
}
