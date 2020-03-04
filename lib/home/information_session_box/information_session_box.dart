import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/home/information_session_box/countdown_text.dart';
import 'package:pomodoro_clock_flutter_mobx/home/information_session_box/status_text.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class InformationSessionBox extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          _sessionText(),
          PomodoroStatusText(),
          CountDownText(),
        ],
      );

  _sessionText() => Observer(builder: (_) {
        final _sessionNumber = _pomodoroTechnique.pomodoro.sessionNumber;
        final style = TextStyle(color: Colors.grey[800], fontSize: 35);
        return Text('Session $_sessionNumber', style: style);
      });
}
