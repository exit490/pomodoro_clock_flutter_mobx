import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/pause_button.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/reset_button.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/resume_button.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/start_button.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class ActionsButtons extends StatelessWidget {
  static double size = 20;
  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        _startOrResumeButton(),
        PauseButton(),
        ResetButton(),
      ]);

  _startOrResumeButton() => Observer(builder: (_) {
        final status = _pomodoroTechnique.pomodoro.status;

        if (status == PomodoroStatus.paused) {
          return ResumeButton();
        }

        return StartButton();
      });
}
