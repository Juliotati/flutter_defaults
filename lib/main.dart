import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/app_config.dart';
import 'package:flutter_defaults/flutter_paths.dart';

Future<void> main() async {
  await AppConfig.setup();
  runApp(const FlutterPaths());
}
