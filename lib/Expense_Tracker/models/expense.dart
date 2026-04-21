import 'package:expense_tracker/Expense_Tracker/models/categorie.dart';

class Expense {
  final String id;
  final double montant;
  final DateTime date;
  final String? noteFacultative;
  final String description;
  final ExpenseCategory categorie;
  final String modePaiement;

  Expense({
    required this.id,
    required this.montant,
    required this.date,
    this.noteFacultative,
    required this.description,
    required this.categorie,
    required this.modePaiement,
  });

  @override
  String toString() {
    return 'Expense : $montant - $description';
  }
}
