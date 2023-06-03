import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/localization_delegates.dart';
import 'package:flutter_defaults/paths/provider/provider_path.dart';

class FlutterDefaults extends StatelessWidget {
  const FlutterDefaults({super.key});

  static const String _defaultTitle = 'Flutter Defaults';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _defaultTitle,
      localizationsDelegates: localizationDelegates(),
      theme: ThemeData(
        fontFamily: 'OpenSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProviderPath(title: _defaultTitle),
    );
  }
}
