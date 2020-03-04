class CountdownStatus {
  const CountdownStatus._(this.value);

  final int value;

  static const CountdownStatus initial = CountdownStatus._(0);

  static const CountdownStatus started = CountdownStatus._(1);

  static const CountdownStatus paused = CountdownStatus._(2);

  static const List<CountdownStatus> values = <CountdownStatus>[
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
