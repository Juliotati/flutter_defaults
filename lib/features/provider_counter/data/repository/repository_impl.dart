part of '../../provider_counter.dart';

@named
@Injectable(as: CounterRepository)
final class CounterRepositoryImpl implements CounterRepository {
  CounterRepositoryImpl(
    @Named.from(CounterLocalDataSourceImpl) this._localDataSource,
  );

  final CounterDataSource _localDataSource;

  @override
  Future<({Exception? exception, void value})> saveCounterValue(
    int counter,
  ) async {
    try {
      await _localDataSource.saveCounterValue(counter);
      return (exception: null, value: null);
    } catch (error) {
      return (exception: Exception(error), value: null);
    }
  }

  @override
  Future<({Exception? exception, int? value})> counter() async {
    try {
      final counter = await _localDataSource.counter();
      return (exception: null, value: counter);
    } catch (error) {
      return (exception: null, value: null);
    }
  }

  @override
  Future<({Exception? exception, void value})> clearStorage() async {
    try {
      await _localDataSource.clearStorage();
      return (exception: null, value: null);
    } catch (error) {
      return (exception: Exception(error), value: null);
    }
  }
}
