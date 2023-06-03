part of provider_path;

class CounterRemoteDataSource extends CounterDataSource {
  @override
  Future<void> clearStorage() {
    // TODO: implement remote clearStorage
    throw UnimplementedError();
  }

  @override
  Future<int> counter() {
    // TODO: implement remote counter
    throw UnimplementedError();
  }

  @override
  Future<void> saveCounterValue(int counter) {
    // TODO: implement remote saveCounterValue
    throw UnimplementedError();
  }
}
