import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/extensions/context.dart';

final class AwaitingImplementation extends StatelessWidget {
  const AwaitingImplementation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.i18n.awaitingImplementation,
          style: context.textTheme.headlineMedium,
        ),
      ),
    );
  }
}
