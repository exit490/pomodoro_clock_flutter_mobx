import 'package:mobx/mobx.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';

part 'pomodoro_technique.g.dart';

class PomodoroTechnique = _PomodoroTechnique with _$PomodoroTechnique;

abstract class _PomodoroTechnique with Store {
  @observable
  Pomodoro pomodoro = Pomodoro.defaultConfig;

  @action
  void updatePomodoroStatus() {
    _whatStatusToChange();
    var _newPomodoro = pomodoro;
    pomodoro = _newPomodoro;
  }

  _whatStatusToChange() {
    if (pomodoro.sessionNumber == 4) {
      _configureLongBreak();
      return;
    }

    if (pomodoro.status == PomodoroStatus.short_break ||
        pomodoro.status == PomodoroStatus.long_break) {
      _configureSession();
      return;
    }

    if (pomodoro.status == PomodoroStatus.session) {
      _configureShortBreak();
      return;
    }
  }

  _configureSession() {
    pomodoro.sessionNumber++;
    pomodoro.status = PomodoroStatus.session;
  }

  _configureLongBreak() {
    pomodoro.status = PomodoroStatus.long_break;
    pomodoro.sessionNumber = 0;
  }

  _configureShortBreak() {
    pomodoro.status = PomodoroStatus.short_break;
  }
}
