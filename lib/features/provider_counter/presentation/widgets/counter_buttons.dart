part of '../../provider_counter.dart';

final class _ProviderCounterControlButtons extends StatelessWidget {
  const _ProviderCounterControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: context.read<CounterProvider>().increment,
          tooltip: context.i18n.increment,
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16.0),
        FloatingActionButton(
          onPressed: context.read<CounterProvider>().decrement,
          tooltip: context.i18n.decrement,
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
