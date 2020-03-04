import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/countdown_status.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';

class PomodoroStatusText extends StatelessWidget {
  final _pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) =>
      Observer(builder: (_) => _whichStatusText());

  _whichStatusText() {
    final style = TextStyle(color: Colors.grey[800], fontSize: 35);

    final status = _pomodoroCountDown.status;

    if (status == CountdownStatus.initial) {
      return Text("It's ready?", style: style);
    }

    if (status == CountdownStatus.paused) {
      return Text("It's paused!", style: style);
    }

    if (status == CountdownStatus.started) {
      return Text(' ', style: style);
    }
    return Text(' ', style: style);
  }
}
