import 'package:flutter/material.dart';
import 'Display.dart';
// import 'Button.dart';
import 'utils/calculation.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Display(output: output),
          Row(children: <Widget>[
            keyOutlineButton("9"),
            keyOutlineButton("8"),
            keyOutlineButton("7"),
            keyOutlineButton("+"),
          ]),
          Row(children: <Widget>[
            keyOutlineButton("6"),
            keyOutlineButton("5"),
            keyOutlineButton("4"),
            keyOutlineButton("-"),
          ]),
          Row(children: <Widget>[
            keyOutlineButton("3"),
            keyOutlineButton("2"),
            keyOutlineButton("1"),
            keyOutlineButton("*"),
          ]),
          Row(children: <Widget>[
            keyOutlineButton("C"),
            keyOutlineButton("0"),
            keyOutlineButton("="),
            keyOutlineButton("/"),
          ])
        ],
      ),
    );
  }

  String output = "";

  Widget keyOutlineButton(String text) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        onPressed: () => setState(() {
          output = Calc.onKeyPress(text, output);
        }),
        child: Text(
          "$text",
          style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500),
        )
      )
    );
  }
}


