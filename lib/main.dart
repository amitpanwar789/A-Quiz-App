// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  void _pressed() {
    setState(() {
      _index += 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List _question = [
      {
        "questionText": "What's your favorite color",
        "answer": ["Green", "Blue", "Red", "Other"]
      },
      {
        "questionText": "What's your favorite places",
        "answer": [
          "Indian Pilgrimages",
          "Forest",
          " Your Home",
          "Crowdy Places"
        ]
      },
      {
        "questionText": "What's your life's goal",
        "answer": ["Money", "Love", "To Help Others", "other"]
      },
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to the quiz"),
        ),
        body: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Question(_question[_index]["questionText"]),
              ...(_question[_index]["answer"] as List<String>).map((answer) {
                return Answer(_pressed, answer);
              }).toList()
            ]),
      ),
    );
  }
}
