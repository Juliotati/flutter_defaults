part of '../../provider_path.dart';

class ProviderPath extends StatefulWidget {
  const ProviderPath({required this.title, super.key});

  final String title;

  @override
  State<ProviderPath> createState() => _ProviderPathState();
}

class _ProviderPathState extends State<ProviderPath> {
  static final String pathTitle = AppLocal.current.pathProvider;

  late String appBarTitle;

  void _setPathTitle() {
    appBarTitle = widget.title;
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() => appBarTitle = pathTitle);
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
            duration: const Duration(milliseconds: 400),
            switchOutCurve: Curves.easeOut,
            reverseDuration: const Duration(milliseconds: 100),
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
        body: const _CounterDisplay(
          key: Key('counter_display'),
        ),
        floatingActionButton: const _CounterControlButtons(
          key: Key('counter_control_buttons'),
        ),
      ),
    );
  }
}
