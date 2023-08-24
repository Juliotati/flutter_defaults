part of '../../bloc_counter.dart';

interface class CounterRepository {
  Future<({Exception? exception, void value})> saveCounterValue(int counter) {
    // TODO: implement saveCounterValue
    throw UnimplementedError();
  }

  Future<({Exception? exception, int? value})> counter() {
    // TODO: implement counter
    throw UnimplementedError();
  }

  Future<({Exception? exception, void value})> clearStorage() {
    // TODO: implement clearStorage
    throw UnimplementedError();
  }
}
