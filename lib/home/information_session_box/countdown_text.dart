import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro.dart';

class CountDownText extends StatelessWidget {
  final _pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) =>
      Observer(builder: (_) => _countDownText());

  _countDownText() =>
      Text('${_countDownSeconds()}', style: TextStyle(fontSize: 90));

  _countDownSeconds() {
    var _countDownSeconds = _pomodoroCountDown.countDownSeconds;
    _countDownSeconds ??= Pomodoro.defaultConfig.sessionMinutes * 60;
    return _format(_countDownSeconds);
  }

  _format(seconds) {
    final double minutesDouble = seconds / 60;
    final int minutesInt = minutesDouble.toInt();
    var secondsMod = seconds % 60;
    secondsMod = _addZeroWhenLessThan10(secondsMod);
    return '$minutesInt:$secondsMod';
  }

  _addZeroWhenLessThan10(seconds) {
    if (seconds < 10) {
      return '0$seconds';
    }
    return '$seconds';
  }
}
