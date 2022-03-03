// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  // MyApp({Key? key}) : super(key: key);
  // ignore: avoid_print
  @override
  State<StatefulWidget> createState()  {
    return MyAppState();
  }

}
class MyAppState extends State<MyApp>{
    var index = 0;
    void pressed() {
      setState(() {
        index += 1;
      });
      }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var question = [
      "What's your favorite color",
      "What's your favorite places",
      "What's your goal",
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
      ),
      home: Scaffold(appBar: AppBar(
        title: const Text("Welcome to the quiz"),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
             Text(question[index]),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Answer 1"), onPressed: pressed,),
            RaisedButton(
              child: Text("Answer 2"), onPressed: pressed,),
            RaisedButton(
              child: Text("Answer 2") , onPressed: pressed,
            ),
          ]
          ),
      ),
    );
  }
}

