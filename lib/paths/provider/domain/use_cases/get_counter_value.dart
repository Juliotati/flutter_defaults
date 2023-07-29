part of provider_path;

@injectable
class GetCounterValue extends CounterUseCase<int?, NoParams> {
  GetCounterValue(@Named.from(CounterRepositoryImpl) this._repository);

  final CounterRepository _repository;

  @override
  Future<({Exception? exception, int? value})> call(NoParams params) async {
    return _repository.counter();
  }
}
