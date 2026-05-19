import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CompteurRiverpod());
  }
}

class CompteurRiverpod extends ConsumerWidget {
  const CompteurRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [MyText(), MyButton()],
        ),
      ),
    );
  }
}

class MyButton extends ConsumerWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.read(counterProvider.notifier).state++;
      },
      child: Text("increment"),
    );
  }
}

class MyText extends ConsumerWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final n = ref.watch(counterProvider);
    return Text("nbr incremente est: $n");
  }
}
