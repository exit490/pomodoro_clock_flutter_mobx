import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class PomodoroStatusText extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  @override
  Widget build(BuildContext context) =>
      Observer(builder: (_) => _whichStatusText());

  _whichStatusText() {
    final style = TextStyle(color: Colors.grey[800], fontSize: 35);

    final status = _pomodoroTechnique.pomodoro.status;

    if (status == PomodoroStatus.initial) {
      return Text("It's ready?", style: style);
    }

    if (status == PomodoroStatus.paused) {
      return Text("It's paused!", style: style);
    }

    if (status == PomodoroStatus.started) {
      return Text(' ', style: style);
    }
    return Text(' ', style: style);
  }
}