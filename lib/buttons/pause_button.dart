import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';

class PauseButton extends StatelessWidget {
  final _pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  final pauseIcon = Icon(
    Icons.pause,
    size: ActionsButtons.size,
  );

  @override
  Widget build(BuildContext context) => FlatButton.icon(
        onPressed: _pomodoroCountDown.pause,
        icon: pauseIcon,
        label: Text('PAUSE'),
      );
}
