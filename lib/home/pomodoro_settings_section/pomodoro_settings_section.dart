import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/countdown_status.dart';
import 'package:pomodoro_clock_flutter_mobx/countdown/pomodoro_countdown.dart';
import 'package:pomodoro_clock_flutter_mobx/home/pomodoro_settings_section/pomodoro_settings_text_field.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_status.dart';
import 'package:pomodoro_clock_flutter_mobx/pomodoro/pomodoro_technique.dart';

class PomodoroSettingsSection extends StatelessWidget {
  static final double _buttonSize = 20;

  final _pomodoroTechnique = GetIt.I<PomodoroTechnique>();
  final _pomodoroCountdown = GetIt.I<PomodoroCountDown>();

  final PomodoroStatus _status;

  PomodoroStatus get status => _status;

  PomodoroSettingsSection.session() : _status = PomodoroStatus.session;

  PomodoroSettingsSection.shortBreak() : _status = PomodoroStatus.short_break;

  PomodoroSettingsSection.longBreak() : _status = PomodoroStatus.long_break;

  @override
  Widget build(BuildContext context) =>
      Observer(builder: (_) => _showsSection());

  _whatSection() {
    var _sectionText;
    var sumAction;
    var subtractAction;
    if (_status == PomodoroStatus.session) {
      _sectionText = 'SESSION';

      sumAction = () {
        _pomodoroTechnique.sumMinutes(PomodoroStatus.session);
        _pomodoroCountdown
            .updateCountDown(_pomodoroTechnique.pomodoro.sessionMinutes);
      };

      subtractAction = () {
        _pomodoroTechnique.subtractMinutes(PomodoroStatus.session);
        _pomodoroCountdown
            .updateCountDown(_pomodoroTechnique.pomodoro.sessionMinutes);
      };
    }

    if (_status == PomodoroStatus.long_break) {
      _sectionText = 'LONG BREAK';
      sumAction =
          () => _pomodoroTechnique.sumMinutes(PomodoroStatus.long_break);
      subtractAction =
          () => _pomodoroTechnique.subtractMinutes(PomodoroStatus.long_break);
    }

    if (_status == PomodoroStatus.short_break) {
      _sectionText = 'SHORT BREAK';
      sumAction =
          () => _pomodoroTechnique.sumMinutes(PomodoroStatus.short_break);
      subtractAction =
          () => _pomodoroTechnique.subtractMinutes(PomodoroStatus.short_break);
    }

    return Column(children: <Widget>[
      IconButton(onPressed: sumAction, icon: upIcon),
      Text(_sectionText),
      PomodoroSettingsTextField(
        pomodoroConfigurationTextField: this,
      ),
      IconButton(onPressed: subtractAction, icon: downIcon),
    ]);
  }

  final downIcon = Icon(
    Icons.arrow_drop_down,
    size: _buttonSize,
  );
  final upIcon = Icon(
    Icons.arrow_drop_up,
    size: _buttonSize,
  );

  _showsSection() {
    if (_pomodoroCountdown.status == CountdownStatus.initial) {
      return _whatSection();
    }

    return Container();
  }
}
