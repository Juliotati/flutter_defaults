import 'package:flutter/material.dart';
import 'package:flutter_defaults/generated/l10n.dart';

class AwaitingImplementation extends StatelessWidget {
  const AwaitingImplementation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppLocal.of(context).awaitingImplementation,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
