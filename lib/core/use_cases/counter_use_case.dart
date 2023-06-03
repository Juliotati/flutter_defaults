class NoParams {
  const NoParams();
}

class CounterParams {
  const CounterParams(this.value);

  final int value;
}

abstract mixin class CounterUseCase<Type, Params> {
  Future<({Exception? exception, Type value})> call(Params params);
}
