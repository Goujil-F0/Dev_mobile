import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompteurProvider extends StatefulWidget {
  const CompteurProvider({super.key});

  @override
  State<CompteurProvider> createState() => _CompteurProviderState();
}

class _CompteurProviderState extends State<CompteurProvider> {
  int n = 0;

  @override
  Widget build(BuildContext context) {
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

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: context.read<CounterPrv>().increment,
      child: Text("increment"),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("nbr incremente est: ${context.watch<CounterPrv>().n}");
  }
}

class CounterPrv extends ChangeNotifier {
  int n = 0;

  void increment() {
    n++;
    notifyListeners();
  }
}
