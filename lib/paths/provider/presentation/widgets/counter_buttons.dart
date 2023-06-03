part of provider_path;

class _CounterControlButtons extends StatelessWidget {
  const _CounterControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: context.read<CounterProvider>().increment,
          tooltip: AppLocal.of(context).increment,
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16.0),
        FloatingActionButton(
          onPressed: context.read<CounterProvider>().decrement,
          tooltip: AppLocal.of(context).decrement,
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
