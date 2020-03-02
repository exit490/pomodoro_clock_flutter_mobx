import 'dart:async';

import 'package:countdown/countdown.dart';
import 'package:mobx/mobx.dart';

part 'pomodoro_countdown.g.dart';

class PomodoroCountDown = _PomodoroCountDown with _$PomodoroCountDown;

abstract class _PomodoroCountDown with Store {
  final int sessionMinutes;

  _PomodoroCountDown({
    this.sessionMinutes,
  });

  StreamSubscription _countDownSubscription;

  @action
  void start() {
    final CountDown _countDown = CountDown(
      Duration(minutes: sessionMinutes),
    );
    _countDownSubscription = _countDown.stream.listen(null);
    _countDownSubscription.onData((data) {
      print(data);
    });
    _countDownSubscription.onDone(() {});
  }

  @action
  void pause() {
    _countDownSubscription.pause();
  }

  @action
  void resume() {
    _countDownSubscription.resume();
  }
}
