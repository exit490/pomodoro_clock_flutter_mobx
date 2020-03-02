import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_clock_flutter_mobx/home/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/home/break_box.dart';
import 'package:pomodoro_clock_flutter_mobx/home/clock_core_view.dart';
import 'package:pomodoro_clock_flutter_mobx/home/session_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final sessionBreakRow = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SessionBox(),
        Padding(padding: EdgeInsets.only(right: 10)),
        BreakBox(),
      ],
    );

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StatusAndClockView(),
          Padding(padding: EdgeInsets.only(bottom: 40)),
          sessionBreakRow,
          Padding(padding: EdgeInsets.only(top: 40)),
          ActionsButtons(),
        ],
      ),
    );
  }
}
