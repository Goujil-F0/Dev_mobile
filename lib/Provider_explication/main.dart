import 'package:expense_tracker/Provider_explication/color_changer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // runApp(MultiProvider(providers: [
  //   ChangeNotifierProvider(create: (context) => CounterNotifier(),)
  // ], child: MainApp(),),
  // );
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ColorChanger());
  }
}
