import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  //const MyAppBar({ Key? key }) : super(key: key);
  final String titleBar;
  MyAppBar(this.titleBar);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: "Navigation Menu",
          ),
          Text(
            titleBar,
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
