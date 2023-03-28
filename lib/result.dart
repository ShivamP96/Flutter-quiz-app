import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

// getter is a method that can't receive  a property
  String get resultPhrase {
    var resultText = "you did it!";
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 20) {
      resultText = 'You are wild!!!';
    } else {
      resultText = 'You are a God!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blueAccent)),
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
