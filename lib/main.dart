// imports for packages first then my own files
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Green', 'Red', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Pizza', 'Tacos', 'Donuts', 'Carrots'],
    },
  ];
  // store class wide variables (properties) here, not in build method
  // otherwise they will be reset everytime build happens
  var _questionIndex = 0;

// this function in a class is called a method
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(children: [
                Question(
                  questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ])
            : Center(child: Text('You Did It!')),
      ),
    );
  }
}
