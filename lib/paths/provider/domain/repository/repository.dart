part of provider_path;

abstract interface class CounterRepository {
  Future<({Exception? exception, void value})> saveCounterValue(int counter);

  Future<({Exception? exception, int? value})> counter();

  Future<({Exception? exception, void value})> clearStorage();
}
