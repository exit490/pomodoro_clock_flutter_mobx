// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_countdown.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroCountDown on _PomodoroCountDown, Store {
  final _$countDownSecondsAtom =
      Atom(name: '_PomodoroCountDown.countDownSeconds');

  @override
  int get countDownSeconds {
    _$countDownSecondsAtom.context.enforceReadPolicy(_$countDownSecondsAtom);
    _$countDownSecondsAtom.reportObserved();
    return super.countDownSeconds;
  }

  @override
  set countDownSeconds(int value) {
    _$countDownSecondsAtom.context.conditionallyRunInAction(() {
      super.countDownSeconds = value;
      _$countDownSecondsAtom.reportChanged();
    }, _$countDownSecondsAtom, name: '${_$countDownSecondsAtom.name}_set');
  }

  final _$_PomodoroCountDownActionController =
      ActionController(name: '_PomodoroCountDown');

  @override
  void start() {
    final _$actionInfo = _$_PomodoroCountDownActionController.startAction();
    try {
      return super.start();
    } finally {
      _$_PomodoroCountDownActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pause() {
    final _$actionInfo = _$_PomodoroCountDownActionController.startAction();
    try {
      return super.pause();
    } finally {
      _$_PomodoroCountDownActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resume() {
    final _$actionInfo = _$_PomodoroCountDownActionController.startAction();
    try {
      return super.resume();
    } finally {
      _$_PomodoroCountDownActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_PomodoroCountDownActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_PomodoroCountDownActionController.endAction(_$actionInfo);
    }
  }
}
