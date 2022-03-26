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
      'answers': [
        {'text': 'Chichi', 'score': 1},
        {'text': 'Bulma', 'score': 1},
        {'text': 'C17', 'score': 1},
      ]
    },
    {
      'questionText': 'Quel est le nom du zanpakuto d\'ichigo?',
      'answers': [
        {'text': 'A', 'score': 1},
        {'text': 'B', 'score': 1},
        {'text': 'C', 'score': 1},
      ]
    },
    {
      'questionText':
          'Quel est le nom de la technique de déplacement des shinigami?',
      'answers': [
        {'text': 'Shunpo', 'score': 1},
        {'text': 'Sonido', 'score': 1},
        {'text': 'Autres', 'score': 1},
      ]
    },
    {
      'questionText': 'Qui est le frère de Natsu?',
      'answers': [
        {'text': 'Gadjeel', 'score': 1},
        {'text': 'Gray', 'score': 1},
        {'text': 'Zeref', 'score': 1},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
