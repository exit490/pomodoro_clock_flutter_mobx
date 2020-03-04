import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/home/information_session_box/countdown_text.dart';
import 'package:pomodoro_clock_flutter_mobx/home/information_session_box/status_text.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class InformationSessionBox extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          PomodoroStatusText(),
          CountDownText(),
        ],
      );
}
