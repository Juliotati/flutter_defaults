import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/widgets/awaiting_implementation.dart';
import 'package:flutter_defaults/core/widgets/page_not_found.dart';
import 'package:flutter_defaults/features/bloc_counter/bloc_counter.dart';
import 'package:flutter_defaults/features/provider_counter/provider_counter.dart';
import 'package:flutter_defaults/flutter_paths.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoute.home.path,
  errorBuilder: (_, __) => const PageNotFound(),
  routes: <RouteBase>[
    GoRoute(
      name: AppRoute.home.name,
      path: AppRoute.home.path,
      builder: (_, state) => const PathsScreen(),
    ),
    GoRoute(
      name: AppRoute.blocPath.name,
      path: AppRoute.blocPath.path,
      builder: (_, state) => const BlocPath(),
    ),
    GoRoute(
      name: AppRoute.riverpodPath.name,
      path: AppRoute.riverpodPath.path,
      builder: (_, state) => const AwaitingImplementation(),
    ),
    GoRoute(
      name: AppRoute.providerPath.name,
      path: AppRoute.providerPath.path,
      builder: (_, state) => const ProviderPath(),
    ),
  ],
);

enum AppRoute {
  home(
    name: 'home',
    path: '/',
  ),
  blocPath(
    name: 'bloc',
    path: '/bloc',
  ),
  providerPath(
    name: 'provider',
    path: '/provider',
  ),
  riverpodPath(
    name: 'riverpod',
    path: '/riverpod',
  );

  const AppRoute({required this.name, required this.path});

  final String name;
  final String path;
}
