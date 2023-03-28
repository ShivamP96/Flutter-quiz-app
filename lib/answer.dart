import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // could also be a of type VoidCallback
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
        // passing the name of the function not the result
        onPressed: selectHandler,
      ),
    );
  }
}
