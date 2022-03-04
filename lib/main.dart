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
    var _question = [
      "What's your favorite color",
      "What's your favorite places",
      "What's your goal",
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
              Question(_question[_index]),
              Answer(_pressed),
              Answer(_pressed),
              Answer(_pressed),
            ]),
      ),
    );
  }
}
