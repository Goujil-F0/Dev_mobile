import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
   CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
 int counter =0;

  void increments(){
    setState(() {
      
    counter++;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    print("CounterApp build method called");
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(counter.toString())
        ],
      ),
      body: Center(
        child: ProductWidget(increments: increments),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
   ProductWidget({super.key, required this.increments});
    final void Function() increments;
  

  @override
  Widget build(BuildContext context) {
    print("ProductWidget build method called");
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10)
      ),
      width: 50,
      height: 50,
      child: IconButton(onPressed:increments, icon: Icon(Icons.add)),
      
    );
  }
}