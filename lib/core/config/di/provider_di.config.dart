// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_defaults/features/bloc_counter/bloc_counter.dart'
    as _i3;
import 'package:flutter_defaults/features/bloc_counter/presentation/bloc/counter_cubit.dart'
    as _i6;
import 'package:flutter_defaults/features/provider_counter/presentation/providers/counter_provider.dart'
    as _i7;
import 'package:flutter_defaults/features/provider_counter/provider_counter.dart'
    as _i4;
import 'package:flutter_defaults/services/shared_preferences_module.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
  gh.factory<_i3.CounterDataSource>(
    () => _i3.CounterRemoteDataSource(),
    instanceName: 'CounterRemoteDataSource',
  );
  gh.factory<_i4.CounterDataSource>(
    () => _i4.CounterRemoteDataSource(),
    instanceName: 'CounterRemoteDataSource',
  );
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => preferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i3.CounterDataSource>(
    () => _i3.CounterLocalDataSourceImpl(gh<_i5.SharedPreferences>()),
    instanceName: 'CounterLocalDataSourceImpl',
  );
  gh.factory<_i4.CounterDataSource>(
    () => _i4.CounterLocalDataSourceImpl(gh<_i5.SharedPreferences>()),
    instanceName: 'CounterLocalDataSourceImpl',
  );
  gh.factory<_i3.CounterRepository>(
    () => _i3.CounterRepositoryImpl(
        gh<_i3.CounterDataSource>(instanceName: 'CounterLocalDataSourceImpl')),
    instanceName: 'CounterRepositoryImpl',
  );
  gh.factory<_i4.CounterRepository>(
    () => _i4.CounterRepositoryImpl(
        gh<_i4.CounterDataSource>(instanceName: 'CounterLocalDataSourceImpl')),
    instanceName: 'CounterRepositoryImpl',
  );
  gh.factory<_i4.GetCounterValue>(() => _i4.GetCounterValue(
      gh<_i4.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.factory<_i4.SaveCounterValue>(() => _i4.SaveCounterValue(
      gh<_i4.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.factory<_i4.ClearStorage>(() => _i4.ClearStorage(
      gh<_i4.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.lazySingleton<_i6.CounterCubit>(() => _i6.CounterCubit(
      gh<_i3.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.lazySingleton<_i7.CounterProvider>(() => _i7.CounterProvider(
        gh<_i4.SaveCounterValue>(),
        gh<_i4.GetCounterValue>(),
        gh<_i4.ClearStorage>(),
      ));
  return getIt;
}

class _$PreferencesModule extends _i8.PreferencesModule {}
