part of '../../provider_counter.dart';

final class _ProviderCounterTitle extends StatelessWidget {
  const _ProviderCounterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CounterProvider>();
    return Text(
      context.i18n.counterButtonDisplayTitle(provider.count),
      style: context.textTheme.titleLarge?.copyWith(fontSize: 50),
      textAlign: TextAlign.left,
    );
  }
}
