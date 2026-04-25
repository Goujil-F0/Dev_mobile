import 'package:expense_tracker/Shopping_App/data/dummy_data.dart';
import 'package:expense_tracker/Shopping_App/screens/Acceuil_screen.dart';
import 'package:expense_tracker/Shopping_App/screens/categorie_screen.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: dummyCategories.length,
      itemBuilder: (context, index) {
        final categorie = dummyCategories[index];
        return CategorieCard(categorie: categorie);
      },
    );
  }
}
