import 'package:expense_tracker/Expense_Tracker/data/dummy_data.dart';
import 'package:expense_tracker/Expense_Tracker/widgets/expense_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  final expense = dummyExpenses[0];

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: ExpenseCard(expense: expense)),
      ),
    );
  }
}
