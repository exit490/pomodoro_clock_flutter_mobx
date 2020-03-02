class PomodoroStatus {
  const PomodoroStatus._(this.value);

  final int value;

  static const PomodoroStatus initial = PomodoroStatus._(0);

  static const PomodoroStatus started = PomodoroStatus._(1);

  static const PomodoroStatus paused = PomodoroStatus._(2);

  static const List<PomodoroStatus> values = <PomodoroStatus>[
    initial,
    started,
    paused,
  ];

  static const List<String> _names = <String>[
    'initial',
    'started',
    'paused',
  ];

  @override
  String toString() => 'PomodoroStatus.${_names[value]}';
}
