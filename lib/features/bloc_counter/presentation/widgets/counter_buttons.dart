part of '../../bloc_counter.dart';

class _BlocCounterControlButtons extends StatelessWidget {
  const _BlocCounterControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: context.read<CounterCubit>().increment,
          tooltip: AppLocal.of(context).increment,
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16.0),
        FloatingActionButton(
          onPressed: context.read<CounterCubit>().decrement,
          tooltip: AppLocal.of(context).decrement,
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
