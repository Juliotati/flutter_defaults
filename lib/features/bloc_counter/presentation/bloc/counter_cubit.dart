import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_defaults/features/bloc_counter/bloc_counter.dart';
import 'package:flutter_defaults/features/bloc_counter/presentation/bloc/bloc_state.dart';
import 'package:injectable/injectable.dart';

class CounterCubit extends Cubit<CounterValidState> {
  CounterCubit(@Named.from(CounterRepositoryImpl) this._repository)
      : super(const CounterValidState(0)) {
    _restoreCounterValue();
  }

  final CounterRepository _repository;

  void increment() {
    emit(CounterValidState(state.count + 1));
    _cacheCounterValue();
  }

  void decrement() {
    emit(CounterValidState(state.count - 1));
    _cacheCounterValue();
  }

  void _cacheCounterValue() {
    _repository.saveCounterValue(state.count);
    log('CACHED COUNTER VALUE');
  }

  Future<void> _restoreCounterValue() async {
    final result = await _repository.counter();
    if (result.exception != null) return;

    emit(CounterValidState(result.value ?? 0));

    log('RESTORED COUNTER VALUE [${result.value}]');
  }
}
