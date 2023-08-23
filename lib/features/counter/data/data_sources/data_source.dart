part of '../../counter.dart';

interface class CounterDataSource {
  Future<void> saveCounterValue(int counter) {
    // TODO: implement saveCounterValue
    throw UnimplementedError();
  }

  Future<int?> counter() {
    // TODO: implement counter
    throw UnimplementedError();
  }

  Future<void> clearStorage() {
    // TODO: implement clearStorage
    throw UnimplementedError();
  }
}
