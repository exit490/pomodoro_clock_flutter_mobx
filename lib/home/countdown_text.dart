import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';

class CountDownText extends StatelessWidget {
  final _pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) =>
      Observer(builder: (_) => _countDownText());

  _countDownText() =>
      Text('${_countDownSeconds()}', style: TextStyle(fontSize: 90));

  _countDownSeconds() {
    var _countDownSeconds = _pomodoroCountDown.countDownSeconds;
    _countDownSeconds ??= defaultDuration.inSeconds;
    return _countDownSeconds;
  }
}
