// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocal {
  AppLocal();

  static AppLocal? _current;

  static AppLocal get current {
    assert(_current != null,
        'No instance of AppLocal was loaded. Try to initialize the AppLocal delegate before accessing AppLocal.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocal> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocal();
      AppLocal._current = instance;

      return instance;
    });
  }

  static AppLocal of(BuildContext context) {
    final instance = AppLocal.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocal present in the widget tree. Did you add AppLocal.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocal? maybeOf(BuildContext context) {
    return Localizations.of<AppLocal>(context, AppLocal);
  }

  /// `Flutter Defaults`
  String get appName {
    return Intl.message(
      'Flutter Defaults',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero {Increment or decrement counter} one {Counter value is at one 👀} two {Counter value is {count} 😗} other {Counter value is {count} 🔥}}`
  String counterButtonDisplayTitle(num count) {
    return Intl.plural(
      count,
      zero: 'Increment or decrement counter',
      one: 'Counter value is at one 👀',
      two: 'Counter value is $count 😗',
      other: 'Counter value is $count 🔥',
      name: 'counterButtonDisplayTitle',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, zero {You haven't pressed the counter} one {You pressed counter once 👌} other {You've pressed {count} 🔥 times}}`
  String youPressedThisButtonThisManyTimes(num count) {
    return Intl.plural(
      count,
      zero: 'You haven\'t pressed the counter',
      one: 'You pressed counter once 👌',
      other: 'You\'ve pressed $count 🔥 times',
      name: 'youPressedThisButtonThisManyTimes',
      desc: '',
      args: [count],
    );
  }

  /// `Increment`
  String get increment {
    return Intl.message(
      'Increment',
      name: 'increment',
      desc: '',
      args: [],
    );
  }

  /// `Decrement`
  String get decrement {
    return Intl.message(
      'Decrement',
      name: 'decrement',
      desc: '',
      args: [],
    );
  }

  /// `Provider Path`
  String get pathProvider {
    return Intl.message(
      'Provider Path',
      name: 'pathProvider',
      desc: '',
      args: [],
    );
  }

  /// `Riverpod Path`
  String get pathRiverpod {
    return Intl.message(
      'Riverpod Path',
      name: 'pathRiverpod',
      desc: '',
      args: [],
    );
  }

  /// `Bloc Path`
  String get pathBloc {
    return Intl.message(
      'Bloc Path',
      name: 'pathBloc',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocal> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocal> load(Locale locale) => AppLocal.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
