import 'package:flutter/material.dart';

class StatusAndClockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _statusText(),
        _timeText(),
      ],
    );
  }

  _statusText() {
    return Text(
      'Ready?',
      style: TextStyle(
        color: Colors.grey[800],
        fontSize: 35,
      ),
    );
  }

  _timeText() {
    return Text(
      '5:00',
      style: TextStyle(
        color: Colors.grey[800],
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}
