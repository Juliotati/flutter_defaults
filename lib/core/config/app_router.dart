import 'package:flutter/material.dart';
import 'package:flutter_defaults/flutter_defaults.dart';
import 'package:flutter_defaults/features/counter/counter.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoute.home.path,
  errorBuilder: (context, _) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Are you lost?',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Follow the riverpod will provide a way home',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    ),
  ),
  routes: <RouteBase>[
    GoRoute(
      name: AppRoute.home.name,
      path: AppRoute.home.path,
      builder: (_, state) => const FlutterPathsScreen(),
    ),
    GoRoute(
      name: AppRoute.blocPath.name,
      path: AppRoute.blocPath.path,
      builder: (_, state) => const BlocPath(),
    ),
    GoRoute(
      name: AppRoute.riverpodPath.name,
      path: AppRoute.riverpodPath.path,
      builder: (_, state) => const RiverpodPath(),
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
