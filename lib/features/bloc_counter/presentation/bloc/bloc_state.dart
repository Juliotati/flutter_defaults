sealed class CounterState {
  const CounterState();
}

class CounterInitial extends CounterState {
  const CounterInitial();
}

class CounterCubicState extends CounterState {
  const CounterCubicState(this.count);

  final int count;
}
