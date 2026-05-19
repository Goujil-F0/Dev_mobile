import 'package:expense_tracker/Provider_explication/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterAppProvider extends StatelessWidget {
  CounterAppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    print("CounterApp build method called");
    int c = context.watch<CounterNotifier>().counter;
    return Scaffold(
      appBar: AppBar(actions: [Text(c.toString())]),
      body: Center(child: ProductWidget()),
    );
  }
}

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("ProductWidget build method called");
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 50,
      height: 50,
      child: IconButton(
        onPressed: () {
          context.read<CounterNotifier>().increments();
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
