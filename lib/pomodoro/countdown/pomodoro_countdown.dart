
import 'package:mobx/mobx.dart';

part 'pomodoro_countdown.g.dart';

class PomodoroCountDown = _PomodoroCountDown with _$PomodoroCountDown;

abstract class _PomodoroCountDown with Store {


  @observable
  int count = -1;

  @action
  void start() {

  }

  @action
  void pause() {
    count++;
  }

  @action
  void resume() {

  }
}
