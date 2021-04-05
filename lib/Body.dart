import 'package:flutter/material.dart';

import 'utils/calculation.dart';

import 'Display.dart';
import 'Button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  _updateOutput (String text) {
    setState(() {
      Calc.output = Calc.result(text, Calc.output);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Display(output: Calc.output),
          Row(children: <Widget>[
            Button(character: "9", updateOutput: _updateOutput),
            Button(character: "8", updateOutput: _updateOutput),
            Button(character: "7", updateOutput: _updateOutput),
            Button(character: "+", updateOutput: _updateOutput),
          ]),
          Row(children: <Widget>[
            Button(character: "6", updateOutput: _updateOutput),
            Button(character: "5", updateOutput: _updateOutput),
            Button(character: "4", updateOutput: _updateOutput),
            Button(character: "-", updateOutput: _updateOutput),
          ]),
          Row(children: <Widget>[
            Button(character: "3", updateOutput: _updateOutput),
            Button(character: "2", updateOutput: _updateOutput),
            Button(character: "1", updateOutput: _updateOutput),
            Button(character: "*", updateOutput: _updateOutput),
          ]),
          Row(children: <Widget>[
            Button(character: "C", updateOutput: _updateOutput),
            Button(character: "0", updateOutput: _updateOutput),
            Button(character: "=", updateOutput: _updateOutput),
            Button(character: "/", updateOutput: _updateOutput),
          ])
        ],
      ),
    );
  }
}


