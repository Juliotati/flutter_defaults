import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/di/provider_di.dart';
import 'package:flutter_defaults/flutter_defaults.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await setupGetIt();
  runApp(const FlutterDefaults());
}
