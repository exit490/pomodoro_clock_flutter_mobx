import 'package:flutter/foundation.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';

class Pomodoro {
  int sessionMinutes;

  int longBreakMinutes;

  int shortBreakMinutes;

  int sessionNumber;

  PomodoroStatus status;

  factory Pomodoro.defaultConfig() => Pomodoro(
        sessionMinutes: 25,
        longBreakMinutes: 30,
        shortBreakMinutes: 5,
        sessionNumber: 1,
        status: PomodoroStatus.session,
      );

  Pomodoro({
    @required this.sessionMinutes,
    @required this.longBreakMinutes,
    @required this.shortBreakMinutes,
    @required this.sessionNumber,
    @required this.status,
  });
}
