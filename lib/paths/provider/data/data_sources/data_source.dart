part of provider_path;

abstract interface class CounterDataSource {
  Future<void> saveCounterValue(int counter);

  Future<int?> counter();

  Future<void> clearStorage();
}
