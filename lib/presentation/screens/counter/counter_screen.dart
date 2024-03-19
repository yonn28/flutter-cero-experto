import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/counter_provider.dart';
import 'package:widgets_app/presentation/provider/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = "counter_screen";

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDark = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).update((dark) => !dark);
              },
              icon: isDark ? const Icon(Icons.dark_mode) : const Icon(Icons.light_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Valor :$clickCounter",
                style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          //segunda alternativa
          // ref.read(counterProvider.notifier).update((state) => state + 1 );
        },
      ),
    );
  }
}
