part of provider_path;

class _CounterDisplay extends StatelessWidget {
  const _CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (_, provider, __) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 200.0),
            child: Text(
              AppLocal.of(context).counterButtonDisplayTitle(provider.count),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 55.0,
                  ),
              textAlign: TextAlign.left,
            ),
          ),
        );
      },
    );
  }
}
