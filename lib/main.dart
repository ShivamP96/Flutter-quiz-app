import 'package:flutter/material.dart';

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
    return MyAppState();
  }
}

// <MyApp> pointer to MyApp
// State is provided by materialDart
// MyAppState is an object of type State which is connected to <MyApp> which
// is a stateful widget
class MyAppState extends State<MyApp> {
  // store class wide variables (properties) here, not in build method
  // otherwise they will be reset everytime build happens
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
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
          Text(
            questions[questionIndex],
          ),
          ElevatedButton(
            child: Text('Answer 1'),
            // passing the name of the function not the result
            onPressed: answerQuestion,
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
