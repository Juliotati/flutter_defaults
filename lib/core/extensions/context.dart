import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/app_router.dart';
import 'package:flutter_defaults/generated/l10n.dart';
import 'package:go_router/go_router.dart';

extension AppRouterHelper on BuildContext {
  void navigate(AppRoute route) {
    if (kIsWeb) return go(route.path);
    return goNamed(route.name);
  }

  AppLocal get i18n => AppLocal.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
