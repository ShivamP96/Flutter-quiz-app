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
    return MaterialApp(
      // home is named argument, text is a positional argument
      home: Text('Hello!'),
    );
  }
}
