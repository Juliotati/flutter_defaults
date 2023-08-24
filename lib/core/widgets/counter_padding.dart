import 'package:flutter/cupertino.dart';

class CounterPadding extends StatelessWidget {
  const CounterPadding({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 200.0),
        child: child,
      ),
    );
  }
}
