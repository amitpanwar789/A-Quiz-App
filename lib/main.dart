// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // MyApp({Key? key}) : super(key: key);
  // ignore: avoid_print
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _score = 0;
  void _pressed(int val) {
    _score += val;
    
    setState(() {
      _index += 1;
    });
  }
  void Reset(){
    setState(() {
    _index = 0;
    _score = 0;      
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List _question = [
      {
        "questionText": "What's your favorite color",
        "answer": [
          {'text': "Green", "score": 10},
          {'text': "Blue", "score": 15},
          {"text": "Red", "score": 5},
          {"text": "Other", "score": 2}
        ]
      },
      {
        "questionText": "What's your favorite places",
        "answer": [
          {"text": "Indian Pilgrimages", "score": 20},
          {'text': "Forest", "score": 15},
          {'text': " Your Home", "score": 10},
          {'text': "Crowdy Places", "score": 5}
        ]
      },
      {
        "questionText": "What's your life's goal",
        "answer": [
          {"text": "Money", "score": 5},
          {"text": "Love", "score": 8},
          {"text": "To Help Others", "score": 20},
          {"text": "other", "score": 15}
        ]
      },
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to the quiz"),
        ),
        body: (_index < _question.length)
            ? Quiz(_question, _index, _pressed)
            : Result(_score , Reset),
      ),
    );
  }
}
