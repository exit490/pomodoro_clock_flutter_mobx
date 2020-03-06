import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_settings_section/pomodoro_settings_text_field.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';
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

  _whatSection() {
    var _sectionText;
    var sumAction;
    var subtractAction;
    if (_type == PomodoroSettingsSection.sessionS) {
      _sectionText = 'SESSION';

      sumAction = () => _pomodoroTechnique.sumMinutes(PomodoroStatus.session);
      subtractAction =
          () => _pomodoroTechnique.subtractMinutes(PomodoroStatus.session);
    }

    if (_type == PomodoroSettingsSection.longBreakS) {
      _sectionText = 'LONG BREAK';
      sumAction =
          () => _pomodoroTechnique.sumMinutes(PomodoroStatus.long_break);
      subtractAction =
          () => _pomodoroTechnique.subtractMinutes(PomodoroStatus.long_break);
    }

    if (_type == PomodoroSettingsSection.shortBreakS) {
      _sectionText = 'SHORT BREAK';
      sumAction =
          () => _pomodoroTechnique.sumMinutes(PomodoroStatus.short_break);
      subtractAction =
          () => _pomodoroTechnique.subtractMinutes(PomodoroStatus.short_break);
    }

    return Column(children: <Widget>[
      IconButton(onPressed: sumAction, icon: upIcon),
      Text(_sectionText),
      PomodoroSettingsTextField(
        pomodoroConfigurationTextField: this,
      ),
      IconButton(onPressed: subtractAction, icon: downIcon),
    ]);
  }

  final downIcon = Icon(
    Icons.arrow_drop_down,
    size: _buttonSize,
  );
  final upIcon = Icon(
    Icons.arrow_drop_up,
    size: _buttonSize,
  );
}
