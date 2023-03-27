import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// use this syntax for anything that is one line
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Chosen!");
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
          Text('The Questions!'),
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
