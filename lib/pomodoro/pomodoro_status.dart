class PomodoroStatus {
  const PomodoroStatus._(this.value);

  final int value;

  static const PomodoroStatus session = PomodoroStatus._(0);

  static const PomodoroStatus short_break = PomodoroStatus._(1);

  static const PomodoroStatus long_break = PomodoroStatus._(2);

  static const List<PomodoroStatus> values = <PomodoroStatus>[
    session,
    short_break,
    long_break,
  ];

  static const List<String> _names = <String>[
    'session',
    'short_break',
    'long_break',
  ];

  @override
  String toString() => 'PomodoroStatus.${_names[value]}';
}
