part of '../../provider_counter.dart';

class ProviderPath extends StatefulWidget {
  const ProviderPath({super.key});

  @override
  State<ProviderPath> createState() => _ProviderPathState();
}

class _ProviderPathState extends State<ProviderPath> {
  late String appBarTitle;

  void _setPathTitle() {
    appBarTitle = AppLocal.current.flutterPaths;
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() => appBarTitle = AppLocal.current.pathProvider);
    });
  }

  @override
  void initState() {
    super.initState();
    _setPathTitle();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(create: (_) => getIt.get<CounterProvider>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: AnimatedSwitcher(
            switchInCurve: Curves.easeIn,
            duration: const Duration(milliseconds: 1000),
            switchOutCurve: Curves.easeOut,
            reverseDuration: const Duration(milliseconds: 400),
            child: Align(
              alignment: Alignment.centerLeft,
              key: Key('Align<$appBarTitle>'),
              child: Text(
                appBarTitle,
                key: Key('Title<$appBarTitle>'),
              ),
            ),
          ),
        ),
        body: const CounterPadding(
          child: _ProviderCounterTitle(key: Key('Provider_counter_display')),
        ),
        floatingActionButton: const HeroMode(
          enabled: false,
          child: _ProviderCounterControlButtons(
            key: Key('Provider_counter_control_buttons'),
          ),
        ),
      ),
    );
  }
}
