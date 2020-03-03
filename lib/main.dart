import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/home/home_page.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/countdown/pomodoro_countdown.dart';

void main() {
  GetIt.I.registerSingleton<PomodoroCountDown>(PomodoroCountDown());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
