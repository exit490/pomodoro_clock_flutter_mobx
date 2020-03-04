// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_technique.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroTechnique on _PomodoroTechnique, Store {
  final _$pomodoroAtom = Atom(name: '_PomodoroTechnique.pomodoro');

  @override
  Pomodoro get pomodoro {
    _$pomodoroAtom.context.enforceReadPolicy(_$pomodoroAtom);
    _$pomodoroAtom.reportObserved();
    return super.pomodoro;
  }

  @override
  set pomodoro(Pomodoro value) {
    _$pomodoroAtom.context.conditionallyRunInAction(() {
      super.pomodoro = value;
      _$pomodoroAtom.reportChanged();
    }, _$pomodoroAtom, name: '${_$pomodoroAtom.name}_set');
  }

  final _$_PomodoroTechniqueActionController =
      ActionController(name: '_PomodoroTechnique');

  @override
  void updatePomodoroStatus() {
    final _$actionInfo = _$_PomodoroTechniqueActionController.startAction();
    try {
      return super.updatePomodoroStatus();
    } finally {
      _$_PomodoroTechniqueActionController.endAction(_$actionInfo);
    }
  }
}
