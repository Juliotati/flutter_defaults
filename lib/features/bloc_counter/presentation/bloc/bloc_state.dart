sealed class CounterState {
  const CounterState();
}

class CounterValidState extends CounterState {
  const CounterValidState(this.count);

  final int count;
}

class CounterInvalidState extends CounterState {
  const CounterInvalidState(this.message);

  final String message;
}
