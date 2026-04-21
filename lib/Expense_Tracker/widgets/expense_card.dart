import 'package:expense_tracker/Expense_Tracker/models/categorie.dart';
import 'package:expense_tracker/Expense_Tracker/models/expense.dart';
import 'package:flutter/material.dart';

IconData getCategoryIcon(ExpenseCategory category) {
  switch (category) {
    case ExpenseCategory.Food:
      return Icons.fastfood;
    case ExpenseCategory.Work:
      return Icons.work;
    case ExpenseCategory.Travel:
      return Icons.travel_explore;
    case ExpenseCategory.Shopping:
      return Icons.shopping_basket;
    case ExpenseCategory.Entrainement:
      return Icons.fitness_center;
    case ExpenseCategory.Logement:
      return Icons.house_siding;
    case ExpenseCategory.Transport:
      return Icons.directions_bus;
    default:
      return Icons.category;
  }
}

class ExpenseCard extends StatelessWidget {
  final Expense expense;

  const ExpenseCard({super.key, required this.expense});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(getCategoryIcon(expense.categorie)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(expense.description),
                  Text(expense.categorie.name),
                ],
              ),
            ),
            Text('-${expense.montant.toStringAsFixed(2)} DH'),
          ],
        ),
      ),
    );
  }
}
