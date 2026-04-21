import 'package:expense_tracker/Expense_Tracker/models/categorie.dart';
import 'package:expense_tracker/Expense_Tracker/models/expense.dart';

List<Expense> dummyExpenses = [
  Expense(id: '1', montant: 300.0, date: DateTime(2026, 4, 20) , description: 'Depense de mois de la salle', categorie: ExpenseCategory.Entrainement, modePaiement: 'Espece'),
  Expense(id: '2', montant: 400.0, date: DateTime(2026, 4, 1), description: 'Grocery shopping pour une semaine', categorie: ExpenseCategory.Shopping, modePaiement: 'Carte bancaire'),
  Expense(id: '3', montant: 1300.0, date: DateTime(2026, 3, 7), description: 'Depense du logement', categorie: ExpenseCategory.Logement, modePaiement: 'Espece'),
  Expense(id: '4', montant: 100.0, date: DateTime(2026, 3, 30), description: 'Depense de la carte du bus', categorie: ExpenseCategory.Transport, modePaiement: 'Espece'),
];
