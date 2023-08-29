import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_defaults/features/bloc_counter/bloc_counter.dart';
import 'package:flutter_defaults/features/bloc_counter/presentation/bloc/bloc_event.dart';
import 'package:flutter_defaults/features/bloc_counter/presentation/bloc/bloc_state.dart';
import 'package:injectable/injectable.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(@Named.from(CounterRepositoryImpl) this._repository)
      : super(const CounterValidState(0)) {
    on<CounterIncremented>(_increment);
    on<CounterDecremented>(_decrement);
    on<CacheCounterValue>(_cacheCounterValue);
    on<RestoreCounterValue>(_restoreCounterValue);

    add(const RestoreCounterValue());
  }

  final CounterRepository _repository;

  void _increment(_, Emitter<CounterState> emit) {
    final int count = (state as CounterValidState).count + 1;
    emit(CounterValidState(count));
    add(CacheCounterValue(count));
  }

  void _decrement(_, Emitter<CounterState> emit) {
    final int count = (state as CounterValidState).count - 1;
    emit(CounterValidState(count));
    add(CacheCounterValue(count));
  }

  void _cacheCounterValue(
    CacheCounterValue event,
    Emitter<CounterState> emit,
  ) {
    _repository.saveCounterValue(event.count);
  }

  Future<void> _restoreCounterValue(_, Emitter<CounterState> emit) async {
    final result = await _repository.counter();

    if (result.exception != null) {
      emit(const CounterInvalidState('Could not restore counter value'));
      return;
    }

    emit(CounterValidState(result.value ?? 0));
  }

  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);

    if (event is CounterIncremented) {
      _logCounterIncremented();
    } else if (event is CounterDecremented) {
      _logCounterDecremented();
    } else if (event is CacheCounterValue) {
      _logCachedCounter();
    } else if (event is RestoreCounterValue) {
      _logRestoredCounter();
    }
  }

  void _logCounterIncremented() {
    log('COUNTER INCREMENTED');
  }

  void _logCounterDecremented() {
    log('COUNTER DECREMENTED');
  }

  void _logCachedCounter() {
    log('COUNTER CACHED');
  }

  void _logRestoredCounter() {
    log('COUNTER RESTORED');
  }
}
