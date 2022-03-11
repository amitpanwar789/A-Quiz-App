import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  //const Result({ Key? key }) : super(key: key);
  final int score;
  final VoidCallback Reset;
  Result(this.score , this.Reset);
  String get messagePhrase {
    String message;
    if (score < 15) {
      message = "You Need to work hard";
    } else if (score < 40) {
      message = "You are good";
    } else {
      message = "You are doing great, keep working hard";
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          messagePhrase,
          style: TextStyle(
            fontSize: 36,
            color: Colors.cyan,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            onPressed: Reset,
            child: Text(
              "Play Again!",
              textAlign: TextAlign.center,
            ))
      ],
    ));
  }
}
