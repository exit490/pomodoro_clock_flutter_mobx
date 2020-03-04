import 'dart:async';

import 'package:countdown/countdown.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/countdown_status.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

part 'pomodoro_countdown.g.dart';

class PomodoroCountDown = _PomodoroCountDown with _$PomodoroCountDown;

abstract class _PomodoroCountDown with Store {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();
  StreamSubscription _countDownSubscription;

  set duration(Duration duration) => _duration = duration;
  Duration _duration;

  _isRunning() => _countDownSubscription != null;

  @observable
  int countDownSeconds;

  @observable
  CountdownStatus status = CountdownStatus.initial;

  @action
  void start() {
    status = CountdownStatus.started;
    _configureCountDownSubscription();
  }

  @action
  void pause() {
    status = CountdownStatus.paused;
    _countDownSubscription?.pause();
  }

  @action
  void resume() {
    status = CountdownStatus.started;
    _countDownSubscription?.resume();
  }

  @action
  void reset() {
    status = CountdownStatus.initial;
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

    _duration ??= Duration(
      seconds: 5,
    );

    final _countDown = CountDown(_duration);

    _countDownSubscription = _countDown.stream.listen(null);
    _countDownSubscription.onData((_duration) {
      Duration duration = _duration;
      if (duration.inSeconds != countDownSeconds) {
        countDownSeconds = duration.inSeconds;
      }
    });
    _countDownSubscription
        .onDone(() => _pomodoroTechnique.updatePomodoroStatus());
  }
}
