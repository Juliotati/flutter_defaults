part of '../../bloc_counter.dart';

final class BlocPath extends StatefulWidget {
  const BlocPath({super.key});

  @override
  State<BlocPath> createState() => _BlocPathState();
}

class _BlocPathState extends State<BlocPath> {
  late String appBarTitle;

  void _setPathTitle() {
    appBarTitle = context.i18n.flutterPaths;
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() => appBarTitle = context.i18n.pathBloc);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _setPathTitle();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterBloc(
            sl.get<CounterRepository>(instanceName: 'CounterRepositoryImpl'),
          ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.colorScheme.inversePrimary,
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
          child: _BlocCounterTitle(key: Key('Bloc_counter_display')),
        ),
        floatingActionButton: const HeroMode(
          enabled: false,
          child: _BlocCounterControlButtons(
            key: Key('Bloc_counter_control_buttons'),
          ),
        ),
      ),
    );
  }
}
