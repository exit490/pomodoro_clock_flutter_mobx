import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_information_box/information_session_box.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_settings_section/pomodoro_settings_section.dart';

class HomePage extends StatelessWidget {
  final pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InformationSessionBox(),
              Padding(padding: EdgeInsets.only(bottom: 40)),
              sessionBreakRow(),
              Padding(padding: EdgeInsets.only(top: 40)),
              ActionsButtons()
            ]),
      );

  sessionBreakRow() => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PomodoroSettingsSection.longBreak(),
            Padding(padding: EdgeInsets.only(right: 20)),
            PomodoroSettingsSection.session(),
            Padding(padding: EdgeInsets.only(right: 20)),
            PomodoroSettingsSection.shortBreak(),
          ]);
}
