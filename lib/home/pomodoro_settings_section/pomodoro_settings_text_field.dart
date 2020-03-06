import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_settings_section/pomodoro_settings_section.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class PomodoroSettingsTextField extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  final double _width = 50;
  final double _height = 50;

  final PomodoroStatus _status;

  PomodoroSettingsTextField(
      {PomodoroSettingsSection pomodoroConfigurationTextField})
      : _status = pomodoroConfigurationTextField.status;

  @override
  Widget build(BuildContext context) => Observer(
      builder: (context) => Container(
            width: _width,
            height: _height,
            child: _textField(),
          ));

  _textField() => TextField(
        keyboardType: TextInputType.number,
        maxLines: 1,
        textAlign: TextAlign.center,
        inputFormatters: [
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2),
        ],
        controller: _sessionController(),
      );

  _sessionController() {
    var _controller = TextEditingController();
    _controller.text = _whatConfigurationMinutes().toString();
    return _controller;
  }

  _whatConfigurationMinutes() {
    if (_status == PomodoroStatus.session) {
      return _pomodoroTechnique.pomodoro.sessionMinutes;
    }

    if (_status == PomodoroStatus.long_break) {
      return _pomodoroTechnique.pomodoro.longBreakMinutes;
    }

    if (_status == PomodoroStatus.short_break) {
      return _pomodoroTechnique.pomodoro.shortBreakMinutes;
    }

    return 0;
  }
}
