import 'package:flutter/material.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_information_box/countdown_status_text.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_information_box/countdown_text.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_information_box/pomodoro_status_text.dart';

class InformationSessionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          PomodoroStatusText(),
          CountdownStatusText(),
          CountDownText(),
        ],
      );
}
