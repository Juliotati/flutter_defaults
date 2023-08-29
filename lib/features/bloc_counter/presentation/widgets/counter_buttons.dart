part of '../../bloc_counter.dart';

class _BlocCounterControlButtons extends StatelessWidget {
  const _BlocCounterControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CounterBloc>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => bloc.add(const CounterIncremented()),
          tooltip: AppLocal.of(context).increment,
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16.0),
        FloatingActionButton(
          onPressed: () => bloc.add(const CounterDecremented()),
          tooltip: AppLocal.of(context).decrement,
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
