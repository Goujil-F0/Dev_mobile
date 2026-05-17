import 'package:flutter/material.dart';

class CompteurScreen extends StatefulWidget {
  const CompteurScreen({super.key});

  @override
  State<CompteurScreen> createState() => _CompteurScreenState();
}

class _CompteurScreenState extends State<CompteurScreen> {
  int n = 0;
  @override
  void increment() {
    setState(() {
      n++;
      print(n);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(n: n),
            MyButton(increment: increment),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.increment});
  final VoidCallback increment;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: increment, child: Text("incriment"));
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key, required this.n});
  final int n;

  @override
  Widget build(BuildContext context) {
    return Text("le nombre est: ${n}");
  }
}
