import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class PomodoroStatusText extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  @override
  Widget build(BuildContext context) => Observer(builder: (_) {
        final _sessionNumber = _pomodoroTechnique.pomodoro.sessionNumber;
        final style = TextStyle(color: Colors.grey[800], fontSize: 35);
        return Text('Session $_sessionNumber', style: style);
      });
}
