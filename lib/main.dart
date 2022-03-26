import 'package:flutter/material.dart';
import 'package:manganime/quiz.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Comment s\'appelle la femme de goku?',
      'answers': ['Chichi', 'Bulma', 'C17']
    },
    {
      'questionText': 'Quel est le nom du zanpakuto d\'ichigo?',
      'answers': ['A', 'B', 'C']
    },
    {
      'questionText':
          'Quel est le nom de la technique de déplacement des shinigami?',
      'answers': ['Shunpo', 'Sonido', 'Autres']
    },
    {
      'questionText': 'Qui est le frère de Natsu?',
      'answers': ['Gadjeel', 'Gray', 'Zeref']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Nous avons encore des fonctions');
    } else
      print('Il n\'y a plus de question');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Manganime Battle'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
