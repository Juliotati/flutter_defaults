// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_defaults/paths/provider/presentation/providers/counter_provider.dart'
    as _i5;
import 'package:flutter_defaults/paths/provider/provider_path.dart' as _i3;
import 'package:flutter_defaults/services/shared_preferences_module.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

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
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => preferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i3.CounterDataSource>(
    () => _i3.CounterLocalDataSourceImpl(gh<_i4.SharedPreferences>()),
    instanceName: 'CounterLocalDataSourceImpl',
  );
  gh.factory<_i3.CounterRepository>(
    () => _i3.CounterRepositoryImpl(
        gh<_i3.CounterDataSource>(instanceName: 'CounterLocalDataSourceImpl')),
    instanceName: 'CounterRepositoryImpl',
  );
  gh.factory<_i3.GetCounterValue>(() => _i3.GetCounterValue(
      gh<_i3.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.factory<_i3.SaveCounterValue>(() => _i3.SaveCounterValue(
      gh<_i3.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.factory<_i3.ClearStorage>(() => _i3.ClearStorage(
      gh<_i3.CounterRepository>(instanceName: 'CounterRepositoryImpl')));
  gh.lazySingleton<_i5.CounterProvider>(() => _i5.CounterProvider(
        gh<_i3.SaveCounterValue>(),
        gh<_i3.GetCounterValue>(),
        gh<_i3.ClearStorage>(),
      ));
  return getIt;
}

class _$PreferencesModule extends _i6.PreferencesModule {}
