import 'package:flutter/material.dart';

class LongBreakBox extends StatelessWidget {
  final double buttonSize = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _plusButton(),
        Text('LONG BREAK'),
        _sessionTextField(),
        _subtractButton(),
      ],
    );
  }

  _sessionTextField() {
    return Container(
      width: 50,
      height: 50,
      child: TextField(),
    );
  }

  _plusButton() {
    var upIcon = Icon(
      Icons.arrow_drop_up,
      size: buttonSize,
    );

    return IconButton(
      onPressed: () {},
      icon: upIcon,
    );
  }

  _subtractButton() {
    var downIcon = Icon(
      Icons.arrow_drop_down,
      size: buttonSize,
    );

    return IconButton(
      onPressed: () {},
      icon: downIcon,
    );
  }
}