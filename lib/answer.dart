import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);
  final VoidCallback Answer_selector;
  final String answer_text;
  Answer(this.Answer_selector , this.answer_text);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.red,
          child: Text(answer_text),
          onPressed: Answer_selector,
        )
      );
  }
}
