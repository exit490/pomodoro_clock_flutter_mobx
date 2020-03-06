import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_settings_section/pomodoro_settings_text_field.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class PomodoroSettingsSection extends StatelessWidget {
  static final double _buttonSize = 20;

  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  final int _type;

  static int sessionS = 0;
  static int shortBreakS = 1;
  static int longBreakS = 2;

  int get type => _type;

  PomodoroSettingsSection.session() : _type = sessionS;

  PomodoroSettingsSection.shortBreak() : _type = shortBreakS;

  PomodoroSettingsSection.longBreak() : _type = longBreakS;

  @override
  Widget build(BuildContext context) => _whatSection();

  _subtractButton() {
    var downIcon = Icon(
      Icons.arrow_drop_down,
      size: _buttonSize,
    );

    return IconButton(
      onPressed: () {},
      icon: downIcon,
    );
  }

  _whatSection() {
    var _sectionText;
    var plusButtonAction;
    if (_type == PomodoroSettingsSection.sessionS) {
      _sectionText = 'SESSION';
      plusButtonAction = () => _pomodoroTechnique.plusSessionMinutes();
    }

    if (_type == PomodoroSettingsSection.longBreakS) {
      _sectionText = 'LONG BREAK';
      plusButtonAction = () => _pomodoroTechnique.plusLongBreakMinutes();
    }

    if (_type == PomodoroSettingsSection.shortBreakS) {
      _sectionText = 'SHORT BREAK';
      plusButtonAction = () => _pomodoroTechnique.plusShortBreakMinutes();
    }

    return Column(children: <Widget>[
      _plusButton(plusButtonAction),
      Text(_sectionText),
      PomodoroSettingsTextField(
        pomodoroConfigurationTextField: this,
      ),
      _subtractButton(),
    ]);
  }

  _plusButton(action) {
    return IconButton(
      onPressed: action,
      icon: upIcon,
    );
  }

  final upIcon = Icon(
    Icons.arrow_drop_up,
    size: _buttonSize,
  );
}
