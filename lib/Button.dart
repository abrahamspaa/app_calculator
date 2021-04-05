import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String character;
  final ValueChanged<String> updateOutput;

  const Button({
    Key key,
    @required this.character,
    @required this.updateOutput
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(25.0)
        ),
        onPressed: () => widget.updateOutput(widget.character),
        child: Text(
          widget.character,
          style: TextStyle(
            fontSize: 35.0, 
            fontWeight: FontWeight.w500
          )
        )
      )
    );
  }
}
