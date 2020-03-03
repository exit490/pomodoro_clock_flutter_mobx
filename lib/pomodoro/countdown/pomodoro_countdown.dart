import 'dart:async';

import 'package:countdown/countdown.dart';
import 'package:mobx/mobx.dart';

part 'pomodoro_countdown.g.dart';

class PomodoroCountDown = _PomodoroCountDown with _$PomodoroCountDown;

abstract class _PomodoroCountDown with Store {
  StreamSubscription _countDownSubscription;

  @observable
  int count = -1;

  @action
  void start() {
    var _countDown = CountDown(
      Duration(minutes: 10),
    );
    _countDownSubscription = _countDown.stream.listen(null);
    _countDownSubscription.onData((data) {
      Duration duration = data;
      if (duration.inSeconds != count) {
        count = duration.inSeconds;
      }
    });
    _countDownSubscription.onDone(() {});
  }

  @action
  void pause() {
    count++;
  }

  @action
  void resume() {
    _countDownSubscription.resume();
  }
}
