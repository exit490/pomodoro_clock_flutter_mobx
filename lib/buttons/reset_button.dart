import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class ResetButton extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  final playIcon = Icon(
    Icons.refresh,
    size: ActionsButtons.size,
  );

  @override
  Widget build(BuildContext context) => FlatButton.icon(
        onPressed: _pomodoroTechnique.reset,
        icon: playIcon,
        label: Text('RESET'),
      );
}
