import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class ResumeButton extends StatelessWidget {
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  final resumeIcon = Icon(
    Icons.play_circle_outline,
    size: ActionsButtons.size,
  );

  @override
  Widget build(BuildContext context) => FlatButton.icon(
        onPressed: _pomodoroTechnique.start,
        icon: resumeIcon,
        label: Text('RESUME'),
      );
}
