part of '../../bloc_counter.dart';

class _BlocCounterTitle extends StatelessWidget {
  const _BlocCounterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterCubicState>(
      builder: (context, state) {
        return AnimatedSize(
          duration: const Duration(milliseconds: 500),
          child: Text(
            AppLocal.of(context).counterButtonDisplayTitle(state.count),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 50),
            textAlign: TextAlign.left,
          ),
        );
      },
    );
  }
}
