import 'package:flutter/material.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_settings_section/pomodoro_settings_text_field.dart';

class PomodoroSettingsSection extends StatelessWidget {
  final double buttonSize = 20;

  final int _type;

  static int sessionS = 0;
  static int shortBreakS = 1;
  static int longBreakS = 2;

  int get type => _type;

  PomodoroSettingsSection.session() : _type = sessionS;

  PomodoroSettingsSection.shortBreak() : _type = shortBreakS;

  PomodoroSettingsSection.longBreak() : _type = longBreakS;

  @override
  Widget build(BuildContext context) {
    return Column(children: _whatSection());
  }

  _plusButton() {
    var upIcon = Icon(
      Icons.arrow_drop_up,
      size: buttonSize,
    );

    return IconButton(
      onPressed: () {},
      icon: upIcon,
    );
  }

  _subtractButton() {
    var downIcon = Icon(
      Icons.arrow_drop_down,
      size: buttonSize,
    );

    return IconButton(
      onPressed: () {},
      icon: downIcon,
    );
  }

  _whatSection() {
    var _sectionText;
    if (_type == PomodoroSettingsSection.sessionS) {
      _sectionText = 'SESSION';
    }

    if (_type == PomodoroSettingsSection.longBreakS) {
      _sectionText = 'LONG BREAK';
    }

    if (_type == PomodoroSettingsSection.shortBreakS) {
      _sectionText = 'SHORT BREAK';
    }

    return <Widget>[
      _plusButton(),
      Text(_sectionText),
      PomodoroSettingsTextField(
        pomodoroConfigurationTextField: this,
      ),
      _subtractButton(),
    ];
  }
}
