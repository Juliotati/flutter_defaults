sealed class CounterEvent {
  const CounterEvent();
}

final class GetCounterValue extends CounterEvent {
  const GetCounterValue();
}

final class CounterIncremented extends CounterEvent {
  const CounterIncremented();
}

final class CounterDecremented extends CounterEvent {
  const CounterDecremented();
}

final class CacheCounterValue extends CounterEvent {
  const CacheCounterValue(this.count);

  final int count;
}

final class RestoreCounterValue extends CounterEvent {
  const RestoreCounterValue();
}
