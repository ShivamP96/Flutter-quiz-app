import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //type String cause we are not giving it a value so it expects String
  final String questionText;

// Question constructor
  // this is positional argument, if you have more then you put curly
  // braces and that makes it a named argument
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(color: Colors.black, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
