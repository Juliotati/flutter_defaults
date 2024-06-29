import 'package:flutter/widgets.dart';
import 'package:flutter_defaults/core/config/di/app_di.dart';
import 'package:url_strategy/url_strategy.dart';

class AppConfig {
  const AppConfig._();

  static Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    setPathUrlStrategy();
    await setupGetIt();
  }
}
