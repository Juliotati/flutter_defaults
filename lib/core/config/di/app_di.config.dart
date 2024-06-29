// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_defaults/features/bloc_counter/bloc_counter.dart'
    as _i4;
import 'package:flutter_defaults/features/provider_counter/presentation/providers/counter_provider.dart'
    as _i6;
import 'package:flutter_defaults/features/provider_counter/provider_counter.dart'
    as _i5;
import 'package:flutter_defaults/services/shared_preferences_module.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final preferencesModule = _$PreferencesModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
    () => preferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i4.CounterDataSource>(
    () => _i4.CounterLocalDataSourceImpl(gh<_i3.SharedPreferences>()),
    instanceName: 'CounterLocalDataSourceImpl',
  );
  gh.factory<_i4.CounterDataSource>(
    () => _i4.CounterRemoteDataSource(),
    instanceName: 'CounterRemoteDataSource',
  );
  gh.factory<_i4.CounterRepository>(
    () => _i4.CounterRepositoryImpl(
        gh<_i4.CounterDataSource>(instanceName: 'CounterLocalDataSourceImpl')),
    instanceName: 'CounterRepositoryImpl',
  );
  gh.factory<_i5.CounterDataSource>(
    () => _i5.CounterRemoteDataSource(),
    instanceName: 'CounterRemoteDataSource',
  );
  gh.factory<_i5.CounterDataSource>(
    () => _i5.CounterLocalDataSourceImpl(gh<_i3.SharedPreferences>()),
    instanceName: 'CounterLocalDataSourceImpl',
  );
  gh.factory<_i5.CounterRepository>(
    () => _i5.CounterRepositoryImpl(
        gh<_i5.CounterDataSource>(instanceName: 'CounterLocalDataSourceImpl')),
    instanceName: 'CounterRepositoryImpl',
  );
  gh.factory<_i5.ClearStorage>(() => _i5.ClearStorage(
      gh<_i5.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.factory<_i5.GetCounterValue>(() => _i5.GetCounterValue(
      gh<_i5.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.factory<_i5.SaveCounterValue>(() => _i5.SaveCounterValue(
      gh<_i5.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.lazySingleton<_i6.CounterProvider>(() => _i6.CounterProvider(
        gh<_i5.SaveCounterValue>(),
        gh<_i5.GetCounterValue>(),
        gh<_i5.ClearStorage>(),
      ));
  return getIt;
}

class _$PreferencesModule extends _i7.PreferencesModule {}
