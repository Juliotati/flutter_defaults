part of '../../provider_counter.dart';

class _ProviderCounterTitle extends StatelessWidget {
  const _ProviderCounterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CounterProvider>();
    return Text(
      AppLocal.of(context).counterButtonDisplayTitle(provider.count),
      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 50),
      textAlign: TextAlign.left,
    );
  }
}
