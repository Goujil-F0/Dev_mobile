import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

final countryProvider = Provider<String>((ref) {
  return "Morocco";
});

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String country = "Morocco";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(country),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            country = "France";
          });

        },
      ),
    );
  }
}
