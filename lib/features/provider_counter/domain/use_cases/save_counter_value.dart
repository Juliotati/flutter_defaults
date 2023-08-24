part of '../../provider_counter.dart';

@injectable
class SaveCounterValue extends CounterUseCase<void, CounterParams> {
  SaveCounterValue(@Named.from(CounterRepositoryImpl) this._repository);

  final CounterRepository _repository;

  @override
  Future<({Exception? exception, void value})> call(
    CounterParams params,
  ) async {
    return _repository.saveCounterValue(params.value);
  }
}
