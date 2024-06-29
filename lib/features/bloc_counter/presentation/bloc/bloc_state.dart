sealed class CounterState {
  const CounterState();
}

final class CounterValidState extends CounterState {
  const CounterValidState(this.count);

  final int count;
}

final class CounterInvalidState extends CounterState {
  const CounterInvalidState(this.message);

  final String message;
}
