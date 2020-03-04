import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';

part 'pomodoro_technique.g.dart';

class PomodoroTechnique = _PomodoroTechnique with _$PomodoroTechnique;

abstract class _PomodoroTechnique with Store {
  final _pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @observable
  Pomodoro pomodoro = Pomodoro.defaultConfig;

  @action
  void start() {
    pomodoro = _changePomodoroStatus(PomodoroStatus.started);
    _pomodoroCountDown.start();
  }

  @action
  void pause() {
    pomodoro = _changePomodoroStatus(PomodoroStatus.paused);
    _pomodoroCountDown.pause();
  }

  @action
  void reset() {
    pomodoro = _changePomodoroStatus(PomodoroStatus.initial);
    _pomodoroCountDown.reset();
  }

  Pomodoro _changePomodoroStatus(status) {
    var _newPomodoro = pomodoro;
    _newPomodoro.status = status;
    return _newPomodoro;
  }
}
