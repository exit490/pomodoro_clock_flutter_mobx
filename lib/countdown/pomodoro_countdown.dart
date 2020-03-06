import 'dart:async';

import 'package:countdown/countdown.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/countdown_status.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

part 'pomodoro_countdown.g.dart';

class PomodoroCountDown = _PomodoroCountDown with _$PomodoroCountDown;

abstract class _PomodoroCountDown with Store {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();
  StreamSubscription _countDownSubscription;

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
    _pomodoroTechnique.pomodoro = Pomodoro.defaultConfig();
    _killCountDownSubscription();
  }

  _killCountDownSubscription() {
    _countDownSubscription?.pause();
    _countDownSubscription?.cancel();
    _countDownSubscription = null;
    countDownSeconds = null;
    status = CountdownStatus.initial;
  }

  _configureCountDownSubscription() {
    if (_isRunning()) {
      return;
    }

    final _countDown = CountDown(
      _getMinutesFromPomodoroStatus(),
    );

    _countDownSubscription = _countDown.stream.listen(null);
    _countDownSubscription.onData((_duration) {
      Duration duration = _duration;
      if (duration.inSeconds != countDownSeconds) {
        countDownSeconds = duration.inSeconds;
      }
    });
    _countDownSubscription.onDone(() {
      _killCountDownSubscription();
      _pomodoroTechnique.updatePomodoroStatus();
    });
  }

  _getMinutesFromPomodoroStatus() {
    final _status = _pomodoroTechnique.pomodoro.status;

    if (_status == PomodoroStatus.session) {
      return Duration(
        minutes: _pomodoroTechnique.pomodoro.sessionMinutes,
      );
    }

    if (_status == PomodoroStatus.short_break) {
      return Duration(
        minutes: _pomodoroTechnique.pomodoro.shortBreakMinutes,
      );
    }

    if (_status == PomodoroStatus.long_break) {
      return Duration(
        minutes: _pomodoroTechnique.pomodoro.longBreakMinutes,
      );
    }

    return Duration(
      minutes: _pomodoroTechnique.pomodoro.sessionMinutes,
    );
  }
}
