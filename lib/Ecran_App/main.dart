import 'package:expense_tracker/Ecran_App/screens/categorie_screen.dart';
import 'package:flutter/material.dart';
import 'screens/acceuil_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AcceuilScreen(),
    );
  }
}
