// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_technique.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Pomodoro on _Pomodoro, Store {
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

  final _$breakValueAtom = Atom(name: '_Pomodoro.breakValue');

  @override
  double get breakValue {
    _$breakValueAtom.context.enforceReadPolicy(_$breakValueAtom);
    _$breakValueAtom.reportObserved();
    return super.breakValue;
  }

  @override
  set breakValue(double value) {
    _$breakValueAtom.context.conditionallyRunInAction(() {
      super.breakValue = value;
      _$breakValueAtom.reportChanged();
    }, _$breakValueAtom, name: '${_$breakValueAtom.name}_set');
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
        'session: ${session.toString()},breakValue: ${breakValue.toString()},status: ${status.toString()}';
    return '{$string}';
  }
}
