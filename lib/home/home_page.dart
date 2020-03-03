import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/buttons/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';
import 'package:pomodoro_clock_flutter_mobx/home/clock_core_view.dart';
import 'package:pomodoro_clock_flutter_mobx/home/long_break_box.dart';
import 'package:pomodoro_clock_flutter_mobx/home/session_box.dart';
import 'package:pomodoro_clock_flutter_mobx/home/short_break_box.dart';

class HomePage extends StatelessWidget {
  final pomodoroCountDown = GetIt.I<PomodoroCountDown>();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StatusAndClockView(),
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
            LongBreakBox(),
            Padding(padding: EdgeInsets.only(right: 20)),
            SessionBox(),
            Padding(padding: EdgeInsets.only(right: 20)),
            BreakBox(),
          ]);
}
