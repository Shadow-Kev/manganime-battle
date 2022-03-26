import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //final VoidCallback answerQuestion;
  Question(this.questionText); //, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
