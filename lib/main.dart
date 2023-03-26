import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// use this syntax for anything that is one line
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}
