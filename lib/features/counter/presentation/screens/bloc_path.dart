part of '../../counter.dart';

class BlocPath extends StatefulWidget {
  const BlocPath({super.key});

  @override
  State<BlocPath> createState() => _BlocPathState();
}

class _BlocPathState extends State<BlocPath> {
  static final String pathTitle = AppLocal.current.pathBloc;

  late String appBarTitle;

  void _setPathTitle() {
    appBarTitle = defaultTitle;
    Future.delayed(const Duration(milliseconds: 100), () {
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
    return Scaffold(
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
      body: Center(
        child: Text(
          'Waiting impl',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
