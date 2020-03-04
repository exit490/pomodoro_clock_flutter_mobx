import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';

class StartButton extends StatelessWidget {
  final _pomodoroCountdown = GetIt.I<PomodoroCountDown>();

  final playIcon = Icon(
    Icons.play_arrow,
    size: ActionsButtons.size,
  );

  @override
  Widget build(BuildContext context) => FlatButton.icon(
        onPressed: _pomodoroCountdown.start,
        icon: playIcon,
        label: Text('START'),
      );
}
