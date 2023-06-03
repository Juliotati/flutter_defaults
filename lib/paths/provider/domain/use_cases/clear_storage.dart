part of provider_path;

@injectable
class ClearStorage extends CounterUseCase<void, NoParams> {
  ClearStorage(this._repository);

  final CounterRepository _repository;

  @override
  Future<({Exception? exception, void value})> call(NoParams params) async {
    return _repository.clearStorage();
  }
}
