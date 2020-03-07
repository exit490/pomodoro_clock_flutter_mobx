// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_countdown.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroCountDown on _PomodoroCountDown, Store {
  final _$countDownDurationAtom =
      Atom(name: '_PomodoroCountDown.countDownDuration');

  @override
  Duration get countDownDuration {
    _$countDownDurationAtom.context.enforceReadPolicy(_$countDownDurationAtom);
    _$countDownDurationAtom.reportObserved();
    return super.countDownDuration;
  }

  @override
  set countDownDuration(Duration value) {
    _$countDownDurationAtom.context.conditionallyRunInAction(() {
      super.countDownDuration = value;
      _$countDownDurationAtom.reportChanged();
    }, _$countDownDurationAtom, name: '${_$countDownDurationAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_PomodoroCountDown.status');

  @override
  CountdownStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(CountdownStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
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

  @override
  void updateCountDown() {
    final _$actionInfo = _$_PomodoroCountDownActionController.startAction();
    try {
      return super.updateCountDown();
    } finally {
      _$_PomodoroCountDownActionController.endAction(_$actionInfo);
    }
  }
}
