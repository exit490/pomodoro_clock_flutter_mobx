import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/home/custom_text_field.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class SessionTextField extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  @override
  Widget build(BuildContext context) => Observer(
        builder: (context) => _textField(),
      );

  _textField() => Container(
        width: PomodoroConfigurationTextField.width,
        height: PomodoroConfigurationTextField.height,
        child: PomodoroConfigurationTextField(
          controller: _sessionController(),
        ),
      );

  _sessionController() {
    var _controller = TextEditingController();
    _controller.text = _pomodoroTechnique.pomodoro.sessionMinutes.toString();
    return _controller;
  }
}
