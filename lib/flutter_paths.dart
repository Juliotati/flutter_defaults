import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/app_router.dart';
import 'package:flutter_defaults/core/config/localization_delegates.dart';
import 'package:flutter_defaults/core/extensions/context.dart';
import 'package:flutter_defaults/gen/fonts.gen.dart';
import 'package:flutter_defaults/generated/l10n.dart';

final class FlutterPaths extends StatelessWidget {
  const FlutterPaths({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Paths',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizationDelegates(),
      theme: ThemeData(
        fontFamily: FontFamily.openSans,
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

final class PathsScreen extends StatefulWidget {
  const PathsScreen({super.key});

  @override
  State<PathsScreen> createState() => _PathsScreenState();
}

class _PathsScreenState extends State<PathsScreen> {
  String languageCode = 'en';

  void _toggleLanguage() {
    final newLocale = languageCode == 'en' ? 'pt' : 'en';
    AppLocal.delegate.load(Locale(newLocale));
    setState(() => languageCode = newLocale);
  }

  @override
  Widget build(BuildContext context) {
    final locale = context.i18n;
    final textTheme = context.textTheme;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 650.0),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(flex: 3),
                Text(
                  '${locale.paths} 🛣️',
                  style: textTheme.headlineLarge?.copyWith(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                PathButton(
                  label: locale.pathBloc,
                  onPressed: () => context.navigate(AppRoute.blocPath),
                ),
                PathButton(
                  label: locale.pathRiverpod,
                  onPressed: () => context.navigate(AppRoute.riverpodPath),
                ),
                PathButton(
                  label: locale.pathProvider,
                  onPressed: () => context.navigate(AppRoute.providerPath),
                ),
                const Spacer(),
                PathButton(
                  label: '${locale.changeLanguage} [$languageCode]',
                  onPressed: _toggleLanguage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final class PathButton extends StatelessWidget {
  const PathButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

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
