import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_clock_flutter_mobx/action_buttons.dart';
import 'package:pomodoro_clock_flutter_mobx/clock_core_view.dart';
import 'package:pomodoro_clock_flutter_mobx/seesion_box.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StatusAndClockView(),
          SessionBox(),
          ActionsButtons(),
        ],
      ),
    );
  }
}
