import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider_in_riverpod_flutter/future_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(futureProvider);
    return Scaffold(
      body: Center(
        child: provider.when(
          data: (value) => Text(value.toString()),
          error: (error, stack) => Text(error.toString()),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
