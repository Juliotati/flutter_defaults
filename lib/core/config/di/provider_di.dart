import 'package:flutter_defaults/core/config/di/provider_di.config.dart';
import 'package:flutter_defaults/paths/provider/presentation/providers/counter_provider.dart';
import 'package:flutter_defaults/paths/provider/provider_path.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false, initializerName: 'initGetIt')
Future setupGetIt() async {
  getIt.registerLazySingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });

  await GetIt.instance.isReady<SharedPreferences>();

  getIt.registerLazySingleton<CounterDataSource>(() {
    return CounterLocalDataSource(getIt.get<SharedPreferences>());
  });
  getIt.registerLazySingleton<CounterRepository>(() {
    return CounterRepositoryImpl(getIt.get<CounterLocalDataSource>());
  });
  getIt.registerLazySingleton<CounterProvider>(() {
    return CounterProvider(
      getIt.get<SaveCounterValue>(),
      getIt.get<GetCounterValue>(),
      getIt.get<ClearStorage>(),
    );
  });

  initGetIt(getIt);
}
