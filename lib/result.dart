import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Vous avez répondu à toutes les questions !';
    if (resultScore <= 8) {
      resultText = 'Vous êtes éliminée !';
    } else if (resultScore > 8) {
      resultText = 'Vous avez réussi !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            child: Text('Restart Quiz !'),
            onPressed: resetHandler,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black),
              backgroundColor: MaterialStateProperty.all(Colors.amber),
            ),
          )
        ],
      ),
    );
  }
}
