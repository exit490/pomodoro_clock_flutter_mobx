import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          _ClockCoreView(),
          _ActionsButtons(),
        ],
      ),
    );
  }
}

class _ClockCoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _statusText(),
        _timeText(),
      ],
    );
  }

  _statusText() {
    return Text('Ready?');
  }

  _timeText() {
    return Text('5:00');
  }
}

class _ActionsButtons extends StatelessWidget {
  final double buttonSize = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _startButton(),
        _pauseButton(),
        _resetButton(),
      ],
    );
  }

  _startButton() {
    var playIcon = Icon(
      Icons.play_arrow,
      size: buttonSize,
    );

    return FlatButton.icon(
      onPressed: () {},
      icon: playIcon,
      label: Text('START'),
    );
  }

  _pauseButton() {
    var pauseIcon = Icon(
      Icons.pause,
      size: buttonSize,
    );

    return FlatButton.icon(
      onPressed: () {},
      icon: pauseIcon,
      label: Text('PAUSE'),
    );
  }

  _resetButton() {
    var refreshIcon = Icon(
      Icons.refresh,
      size: buttonSize,
    );

    return FlatButton.icon(
      onPressed: () {},
      icon: refreshIcon,
      label: Text('RESET'),
    );
  }
}
