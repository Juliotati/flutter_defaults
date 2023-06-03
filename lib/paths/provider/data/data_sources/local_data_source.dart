part of provider_path;

enum PrefsKey {
  counter,
}

@lazySingleton
final class CounterLocalDataSource extends CounterDataSource {
  CounterLocalDataSource(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  Future<void> clearStorage() async {
    await _sharedPreferences.clear();
  }

  @override
  Future<int?> counter() async {
    return _sharedPreferences.getInt(PrefsKey.counter.name);
  }

  @override
  Future<void> saveCounterValue(int counter) async {
    await _sharedPreferences.setInt(PrefsKey.counter.name, counter);
  }
}
