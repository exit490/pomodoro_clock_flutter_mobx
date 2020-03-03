import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/countdown/pomodoro_countdown.dart';

class ActionsButtons extends StatelessWidget {
  final double buttonSize = 20;
  final pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _startButton(),
        _pauseButton(),
        _resetButton(),
      ],
    );
  }

  _startButton() {
    var playIcon = Icon(
      Icons.play_arrow,
      size: buttonSize,
    );

    return FlatButton.icon(
      onPressed: () {
        pomodoroCountDown.start();
      },
      icon: playIcon,
      label: Text('START'),
    );
  }

  _pauseButton() {
    var pauseIcon = Icon(
      Icons.pause,
      size: buttonSize,
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
      size: buttonSize,
    );

    return FlatButton.icon(
      onPressed: pomodoroCountDown.pause,
      icon: refreshIcon,
      label: Text('RESET'),
    );
  }
}
