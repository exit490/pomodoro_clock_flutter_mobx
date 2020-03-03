import 'package:flutter/material.dart';
import 'package:pomodoro_clock_flutter_mobx/home/countdown_text.dart';

class StatusAndClockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        _statusText,
        CountDownText(),
      ]);

  final _statusText = Text(
    'Ready?',
    style: TextStyle(color: Colors.grey[800], fontSize: 35),
  );
}
