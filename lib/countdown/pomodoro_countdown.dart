import 'dart:async';

import 'package:countdown/countdown.dart';
import 'package:mobx/mobx.dart';

part 'pomodoro_countdown.g.dart';

Duration get defaultDuration => _defaultDuration;
Duration _defaultDuration = Duration(minutes: 25);

class PomodoroCountDown = _PomodoroCountDown with _$PomodoroCountDown;

abstract class _PomodoroCountDown with Store {
  StreamSubscription _countDownSubscription;

  set duration(Duration duration) => _duration = duration;
  Duration _duration;

  _isRunning() => _countDownSubscription != null;

  @observable
  int countDownSeconds;

  @action
  void start() {
    _configureCountDownSubscription();
  }

  @action
  void pause() {
    _countDownSubscription?.pause();
  }

  @action
  void resume() {
    _countDownSubscription?.resume();
  }

  @action
  void reset() {
    _killCountDownSubscription();
  }

  _killCountDownSubscription() {
    _countDownSubscription?.pause();
    _countDownSubscription?.cancel();
    _countDownSubscription = null;
    _duration = null;
    countDownSeconds = null;
  }

  _configureCountDownSubscription() {
    if (_isRunning()) {
      return;
    }

    _duration ??= _defaultDuration;
    final _countDown = CountDown(_duration);

    _countDownSubscription = _countDown.stream.listen(null);
    _countDownSubscription.onData((_duration) {
      Duration duration = _duration;
      if (duration.inSeconds != countDownSeconds) {
        countDownSeconds = duration.inSeconds;
      }
    });
    _countDownSubscription.onDone(() {});
  }
}
