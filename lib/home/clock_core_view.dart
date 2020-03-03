import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/countdown/pomodoro_countdown.dart';

class StatusAndClockView extends StatelessWidget {
  final _pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        _statusText,
        _countDownText(),
      ]);

  final _statusText = Text(
    'Ready?',
    style: TextStyle(color: Colors.grey[800], fontSize: 35),
  );

  _countDownText() => Observer(builder: (_) => _countDownTextHandled());

  _countDownTextHandled() {
    var _countDownText = _pomodoroCountDown.countDownSeconds;
    _countDownText ??= defaultDuration.inSeconds;

    return Text(
      '$_countDownText',
      style: TextStyle(fontSize: 90),
    );
  }
}
