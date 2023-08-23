part of '../../counter.dart';

@injectable
class ClearStorage extends CounterUseCase<void, NoParams> {
  ClearStorage(@Named.from(CounterRepositoryImpl) this._repository);

  final CounterRepository _repository;

  @override
  Future<({Exception? exception, void value})> call(NoParams params) async {
    return _repository.clearStorage();
  }
}
