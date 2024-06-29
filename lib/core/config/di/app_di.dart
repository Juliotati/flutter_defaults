import 'package:flutter_defaults/core/config/di/app_di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final sl = GetIt.instance;

@InjectableInit(asExtension: false, initializerName: 'initGetIt')
Future<void> setupGetIt() async {
  await initGetIt(sl);
}
