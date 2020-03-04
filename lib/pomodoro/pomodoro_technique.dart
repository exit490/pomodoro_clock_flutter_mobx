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
    var _newPomodoro = pomodoro;
    _newPomodoro.status = _whatStatusToChange();
    pomodoro = _newPomodoro;
  }

  PomodoroStatus _whatStatusToChange() {
    if (pomodoro.sessionNumber == 4) {
      return PomodoroStatus.long_break;
    }

    if (pomodoro.status == PomodoroStatus.session) {
      return PomodoroStatus.short_break;
    }

    if (pomodoro.status == PomodoroStatus.short_break ||
        pomodoro.status == PomodoroStatus.long_break) {
      return PomodoroStatus.session;
    }

    return PomodoroStatus.session;
  }
}
