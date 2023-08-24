import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/app_router.dart';
import 'package:flutter_defaults/core/config/localization_delegates.dart';
import 'package:flutter_defaults/generated/l10n.dart';
import 'package:go_router/go_router.dart';

const String defaultTitle = 'Flutter Defaults';

class FlutterPaths extends StatelessWidget {
  const FlutterPaths({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: defaultTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizationDelegates(),
      theme: ThemeData(
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

class FlutterPathsScreen extends StatefulWidget {
  const FlutterPathsScreen({super.key});

  @override
  State<FlutterPathsScreen> createState() => _FlutterPathsScreenState();
}

class _FlutterPathsScreenState extends State<FlutterPathsScreen> {
  String languageCode = 'en';

  void _toggleLanguage() {
    final newLocale = languageCode == 'en' ? 'pt' : 'en';
    AppLocal.delegate.load(Locale(newLocale));
    setState(() => languageCode = newLocale);
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocal.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 3),
            Text(
              locale.paths,
              style: textTheme.headlineLarge?.copyWith(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            PathsButton(
              label: locale.pathBloc,
              onPressed: () => context.pushNamed(AppRoute.blocPath.name),
            ),
            PathsButton(
              label: locale.pathRiverpod,
              onPressed: () => context.pushNamed(AppRoute.riverpodPath.name),
            ),
            PathsButton(
              label: locale.pathProvider,
              onPressed: () => context.pushNamed(AppRoute.providerPath.name),
            ),
            const Spacer(),
            PathsButton(
              label: '${locale.changeLanguage} [$languageCode]',
              onPressed: _toggleLanguage,
            ),
          ],
        ),
      ),
    );
  }
}

class PathsButton extends StatelessWidget {
  const PathsButton({required this.label, required this.onPressed, super.key});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final labelStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.primary,
        );

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label, style: labelStyle),
      ),
    );
  }
}
