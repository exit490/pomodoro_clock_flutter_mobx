import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class StatusAndClockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(children: <Widget>[
        _statusText,
        _timeText,
      ]),
    );
  }

  final _statusText = Text(
    'Ready?',
    style: TextStyle(color: Colors.grey[800], fontSize: 35),
  );

  final _timeText = Text('12', style: const TextStyle(fontSize: 90));
}
