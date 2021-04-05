import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({
    Key key,
    @required this.output,
  }) : super(key: key);

  final String output;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.bottomRight,
        child: Text(
          output,
          style: TextStyle(
            fontSize: 70.0,
            fontWeight: FontWeight.w700
          ),
        ),
      )
    );
  }
}
