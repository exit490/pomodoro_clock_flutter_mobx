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
    return Text('Ready?');
  }

  _timeText() {
    return Text('5:00');
  }
}

