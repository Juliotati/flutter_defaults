class CounterEvent {
  const CounterEvent();
}

class GetCounterValue extends CounterEvent {
  const GetCounterValue();
}

class CounterIncremented extends CounterEvent {
  const CounterIncremented();
}

class CounterDecremented extends CounterEvent {
  const CounterDecremented();
}

class CacheCounterValue extends CounterEvent {
  const CacheCounterValue(this.count);

  final int count;
}

class RestoreCounterValue extends CounterEvent {
  const RestoreCounterValue();
}