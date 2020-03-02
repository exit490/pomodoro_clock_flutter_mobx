// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_technique.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Pomodoro on _Pomodoro, Store {
  final _$longBreakAtom = Atom(name: '_Pomodoro.longBreak');

  @override
  double get longBreak {
    _$longBreakAtom.context.enforceReadPolicy(_$longBreakAtom);
    _$longBreakAtom.reportObserved();
    return super.longBreak;
  }

  @override
  set longBreak(double value) {
    _$longBreakAtom.context.conditionallyRunInAction(() {
      super.longBreak = value;
      _$longBreakAtom.reportChanged();
    }, _$longBreakAtom, name: '${_$longBreakAtom.name}_set');
  }

  final _$sessionAtom = Atom(name: '_Pomodoro.session');

  @override
  double get session {
    _$sessionAtom.context.enforceReadPolicy(_$sessionAtom);
    _$sessionAtom.reportObserved();
    return super.session;
  }

  @override
  set session(double value) {
    _$sessionAtom.context.conditionallyRunInAction(() {
      super.session = value;
      _$sessionAtom.reportChanged();
    }, _$sessionAtom, name: '${_$sessionAtom.name}_set');
  }

  final _$shortBreakAtom = Atom(name: '_Pomodoro.shortBreak');

  @override
  double get shortBreak {
    _$shortBreakAtom.context.enforceReadPolicy(_$shortBreakAtom);
    _$shortBreakAtom.reportObserved();
    return super.shortBreak;
  }

  @override
  set shortBreak(double value) {
    _$shortBreakAtom.context.conditionallyRunInAction(() {
      super.shortBreak = value;
      _$shortBreakAtom.reportChanged();
    }, _$shortBreakAtom, name: '${_$shortBreakAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_Pomodoro.status');

  @override
  PomodoroStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(PomodoroStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$_PomodoroActionController = ActionController(name: '_Pomodoro');

  @override
  void start() {
    final _$actionInfo = _$_PomodoroActionController.startAction();
    try {
      return super.start();
    } finally {
      _$_PomodoroActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pause() {
    final _$actionInfo = _$_PomodoroActionController.startAction();
    try {
      return super.pause();
    } finally {
      _$_PomodoroActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_PomodoroActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_PomodoroActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'longBreak: ${longBreak.toString()},session: ${session.toString()},shortBreak: ${shortBreak.toString()},status: ${status.toString()}';
    return '{$string}';
  }
}
