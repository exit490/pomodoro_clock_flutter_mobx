import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/start_button.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';

class ActionsButtons extends StatelessWidget {
  static double size = 20;

  final pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StartButton(),
        _pauseButton(),
        _resetButton(),
      ],
    );
  }

  _pauseButton() {
    var pauseIcon = Icon(
      Icons.pause,
      size: size,
    );

    return FlatButton.icon(
      onPressed: () {},
      icon: pauseIcon,
      label: Text('PAUSE'),
    );
  }

  _resetButton() {
    var refreshIcon = Icon(
      Icons.refresh,
      size: size,
    );

    return FlatButton.icon(
      onPressed: pomodoroCountDown.pause,
      icon: refreshIcon,
      label: Text('RESET'),
    );
  }
}
