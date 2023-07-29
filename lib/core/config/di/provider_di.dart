import 'package:flutter_defaults/core/config/di/provider_di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false, initializerName: 'initGetIt')
Future<void> setupGetIt() async {
  await initGetIt(getIt);
}
