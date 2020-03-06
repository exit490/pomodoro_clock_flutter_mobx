import 'package:flutter/material.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_configuration_section/pomodoro_configuration_text_field.dart';

class PomodoroConfigurationSection extends StatelessWidget {
  final double buttonSize = 20;

  final int _type;

  static int sessionS = 0;
  static int shortBreakS = 1;
  static int longBreakS = 2;

  int get type => _type;

  PomodoroConfigurationSection.session() : _type = sessionS;

  PomodoroConfigurationSection.shortBreak() : _type = shortBreakS;

  PomodoroConfigurationSection.longBreak() : _type = longBreakS;

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
    if (_type == PomodoroConfigurationSection.sessionS) {
      _sectionText = 'SESSION';
    }

    if (_type == PomodoroConfigurationSection.longBreakS) {
      _sectionText = 'LONG BREAK';
    }

    if (_type == PomodoroConfigurationSection.shortBreakS) {
      _sectionText = 'SHORT BREAK';
    }

    return <Widget>[
      _plusButton(),
      Text(_sectionText),
      PomodoroConfigurationTextField(
        pomodoroConfigurationTextField: this,
      ),
      _subtractButton(),
    ];
  }
}
