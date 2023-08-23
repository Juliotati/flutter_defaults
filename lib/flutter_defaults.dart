import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/app_router.dart';
import 'package:flutter_defaults/core/config/localization_delegates.dart';
import 'package:flutter_defaults/generated/l10n.dart';
import 'package:go_router/go_router.dart';

const String defaultTitle = 'Flutter Defaults';

class FlutterDefaults extends StatelessWidget {
  const FlutterDefaults({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: defaultTitle,
      localizationsDelegates: localizationDelegates(),
      theme: ThemeData(
        fontFamily: 'OpenSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
      supportedLocales: AppLocal.delegate.supportedLocales,
      builder: (context, child) {
        return child!;
      },
    );
  }
}

class FlutterPathsScreen extends StatelessWidget {
  const FlutterPathsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocal.of(context);
    final textTheme = Theme.of(context).textTheme;
    final bodyStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.primary,
        );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              locale.paths,
              style: textTheme.headlineLarge?.copyWith(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => context.pushNamed(AppRoute.blocPath.name),
              child: Text(locale.pathBloc, style: bodyStyle),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.pushNamed(AppRoute.riverpodPath.name),
              child: Text(locale.pathRiverpod, style: bodyStyle),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.pushNamed(AppRoute.providerPath.name),
              child: Text(locale.pathProvider, style: bodyStyle),
            ),
          ],
        ),
      ),
    );
  }
}
