import 'package:flutter/material.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/pause_button.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/reset_button.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/start_button.dart';

class ActionsButtons extends StatelessWidget {
  static double size = 20;

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        StartButton(),
        PauseButton(),
        ResetButton(),
      ]);
}
