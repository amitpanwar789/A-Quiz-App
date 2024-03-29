import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({ Key? key }) : super(key: key);
  final List<dynamic> question;
  final int index ;
  final Function pressed;

  Quiz(this.question, this.index , this.pressed);

  @override
  Widget build(BuildContext context) {
    return Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Question(question[index]["questionText"]),
              ...(question[index]["answer"] as List<dynamic>).map((answer) {
                return Answer(()=>{pressed( answer["score"])}, answer["text"]);
              }).toList()
            ]);
  }
}