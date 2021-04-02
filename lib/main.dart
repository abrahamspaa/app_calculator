import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text(
                output,
                style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w700),
              ),
            )),
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
      ),
    );
  }

  Widget keyOutlineButton(String text) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        onPressed: () => onKeyPress(text),
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.w500
          ),
        )
      )
    );
  }

  String calculation, sign, output = "";
  int first, second;
  void onKeyPress(String keyName) {
    if (keyName == "C") {
      calculation = "";
      output = "";
      first = 0;
      second = 0;
      sign = "";
    } else if (keyName == "+" || keyName == "*" || keyName == "-" || keyName == "/") {
      first = int.parse(output);
      calculation = "";
      sign = keyName;
    } else if (keyName == "=") {
      second = int.parse(output);

      if (sign == "+") {
        calculation = (first + second).toString();
      }

      if (sign == "-") {
        calculation = (first - second).toString();
      }

      if (sign == "*") {
        calculation = (first * second).toString();
      }

      if (sign == "/") {
        calculation = (first / second).toString();
      }

    } else {
      calculation = int.parse(output + keyName).toString();
    }
    setState(() {
      output = calculation;
    });
  }
}
