import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);
  final VoidCallback Answer_selector;
  Answer(this.Answer_selector);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.red,
          child: Text("Answer 1"),
          onPressed: Answer_selector,
        )
      );
  }
}
