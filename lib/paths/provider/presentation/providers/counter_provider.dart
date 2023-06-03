import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_defaults/core/use_cases/counter_use_case.dart';
import 'package:flutter_defaults/paths/provider/provider_path.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider(
    this._saveCounterValue,
    this._getCounterValue,
    this._clearStorage,
  ) {
    _restoreCounterValue();
  }

  final SaveCounterValue _saveCounterValue;
  final GetCounterValue _getCounterValue;
  final ClearStorage _clearStorage;

  int _count = 0;

  int get count => _count;

  void setInitialValue(int? value) {
    _count = value ?? 0;
    notifyListeners();
  }

  void increment() {
    _count++;
    _cacheCounterValue();
    notifyListeners();
  }

  void decrement() {
    _count--;
    _cacheCounterValue();
    notifyListeners();
  }

  void reset() {
    _count = 0;
    _cacheCounterValue();
    notifyListeners();
  }

  void _cacheCounterValue() {
    _saveCounterValue.call(CounterParams(_count));
    log('CACHED COUNTER VALUE');
  }

  Future<void> _restoreCounterValue() async {
    final result = await _getCounterValue.call(const NoParams());
    if (result.exception != null) return;
    setInitialValue(result.value);
    log('RESTORED COUNTER VALUE');
  }

  Future<void> clearStorage() async {
    await _clearStorage.call(const NoParams());
    log('CLEARED STORAGE');
  }
}
