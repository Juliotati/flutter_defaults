part of '../../bloc_counter.dart';

class _BlocCounterTitle extends StatelessWidget {
  const _BlocCounterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final titleLarge = Theme.of(context).textTheme.titleLarge;
    final state = context.select((CounterBloc bloc) => bloc.state);
    if (state is CounterValidState) {
      return AnimatedSize(
        duration: const Duration(milliseconds: 500),
        child: Text(
          AppLocal.of(context).counterButtonDisplayTitle(state.count),
          style: titleLarge?.copyWith(fontSize: 50),
          textAlign: TextAlign.left,
        ),
      );
    }

    return Text(
      (state as CounterInvalidState).message,
      style: titleLarge?.copyWith(fontSize: 50, color: Colors.red[400]),
    );
  }
}
