import 'package:mobx/mobx.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';

part 'pomodoro_technique.g.dart';

class Pomodoro = _Pomodoro with _$Pomodoro;

abstract class _Pomodoro with Store {
  @observable
  double longBreak = 30;

  @observable
  double session = 25;

  @observable
  double shortBreak = 5;

  @observable
  PomodoroStatus status = PomodoroStatus.initial;

  @action
  void start() {
    status = PomodoroStatus.started;
  }

  @action
  void pause() {
    status = PomodoroStatus.paused;
  }

  @action
  void reset() {
    status = PomodoroStatus.initial;
    longBreak = 30;
    session = 25;
    shortBreak = 5;
  }
}
