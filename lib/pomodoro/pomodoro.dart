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

  addSessionMinute(value) {
    sessionMinutes = sessionMinutes + value;
    if (sessionMinutes < 1) {
      sessionMinutes = 1;
    }
  }

  addShortBreakMinute(value) {
    shortBreakMinutes = shortBreakMinutes + value;
    if (shortBreakMinutes < 1) {
      shortBreakMinutes = 1;
    }
  }

  addLongBreakMinute(value) {
    longBreakMinutes = longBreakMinutes + value;
    if (longBreakMinutes < 1) {
      longBreakMinutes = 1;
    }
  }
}
