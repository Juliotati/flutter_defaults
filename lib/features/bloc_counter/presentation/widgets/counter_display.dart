part of '../../bloc_counter.dart';

final class _BlocCounterTitle extends StatelessWidget {
  const _BlocCounterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final titleLarge = context.textTheme.titleLarge?.copyWith(fontSize: 50);
    final state = context.select((CounterBloc bloc) => bloc.state);

    return switch (state) {
      CounterValidState state => AnimatedSize(
          duration: const Duration(milliseconds: 500),
          child: Text(
            context.i18n.counterButtonDisplayTitle(state.count),
            style: titleLarge,
            textAlign: TextAlign.left,
          ),
        ),
      CounterInvalidState state => Text(
          state.message,
          style: titleLarge?.copyWith(color: Colors.red[400]),
        ),
    };
  }
}
