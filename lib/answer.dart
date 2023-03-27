import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // could also be a of type VoidCallback
  final Function selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text('Answer 1'),
        // passing the name of the function not the result
        onPressed: selectHandler,
      ),
    );
  }
}
