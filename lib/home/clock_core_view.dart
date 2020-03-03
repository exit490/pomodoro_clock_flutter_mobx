import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/countdown/pomodoro_countdown.dart';

class StatusAndClockView extends StatelessWidget {
  final _pomodoroCountDown = PomodoroCountDown();

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          _statusText,
          Observer(
              builder: (_) => Text('${_pomodoroCountDown.count}',
                  style: const TextStyle(fontSize: 90))),
        ],
      );

  final _statusText = Text(
    'Ready?',
    style: TextStyle(color: Colors.grey[800], fontSize: 35),
  );
}
