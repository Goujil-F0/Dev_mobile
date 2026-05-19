import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class ColorChanger extends ConsumerWidget {
  const ColorChanger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Parent Widget Called");
    final message = ref.read(helloProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            TargetContainer(),
            ButtonChanger()
          ],
        ),
      ),
    );
  }
}

class ButtonChanger extends ConsumerWidget {
  const ButtonChanger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  print("Button Widget Called");
    // return ElevatedButton(onPressed: () => ref.read(colorProvider.notifier).toggleColor(), child: Text("change"));
    return ElevatedButton(onPressed: () {

    ref.read(cProvider.notifier).state = !ref.read(cProvider.notifier).state;

    } ,
     child: Text("change"));
  }
}


class TargetContainer extends ConsumerWidget {
  const TargetContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Container Widget Called");
    // bool flag = ref.watch(colorProvider);
    bool flag= ref.watch(cProvider);
    return Container(
      decoration: BoxDecoration(
        color:flag ? Colors.amber : Colors.red,
        borderRadius: BorderRadius.circular(10)
      ),
      width: 50,
      height: 50);
}

}


final helloProvider = Provider<String>((ref) => "hello world",);

class ColorNotifier extends StateNotifier<bool> {

ColorNotifier() : super(true);

void toggleColor() => state = !state;

  
}

final colorProvider = StateNotifierProvider<ColorNotifier,bool>((ref) => ColorNotifier(),);

final cProvider = StateProvider<bool>((ref) => true,);