// imports for packages first then my own files
import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import './quiz.dart';
import './answer.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

// use this syntax for anything that is one line
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  // createState is a method that takes no arguments
  // but has to return a state object which is connected to a
  // StatefulWidget.
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// <MyApp> pointer to MyApp
// State is provided by materialDart
// MyAppState is an object of type State which is connected to <MyApp> which
// is a stateful widget
// the _ makes it private class so only from this file it can be used
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40}
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 5},
        {'text': 'Pani Puri', 'score': 20},
        {'text': 'Donuts', 'score': 10},
        {'text': 'Carrots', 'score': 2}
      ],
    },
  ];
  // store class wide variables (properties) here, not in build method
  // otherwise they will be reset everytime build happens
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

// this function in a class is called a method
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more questions!");
    }
  }

  // we are  overriding the statelesswidget build method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home is named argument, text is a positional argument
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
