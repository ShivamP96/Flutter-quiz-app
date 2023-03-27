// imports for packages first then my own files
import 'package:flutter/material.dart';

import './question.dart';

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
  // store class wide variables (properties) here, not in build method
  // otherwise they will be reset everytime build happens
  var _questionIndex = 0;

// this function in a class is called a method
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  // we are  overriding the statelesswidget build method
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      // home is named argument, text is a positional argument
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          ElevatedButton(
            child: Text('Answer 1'),
            // passing the name of the function not the result
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            // anonmous Function
            onPressed: () => print('Answer 2 Chosen'),
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: () {
              print('Answer 3 Chosen!');
            },
          ),
        ]),
      ),
    );
  }
}
