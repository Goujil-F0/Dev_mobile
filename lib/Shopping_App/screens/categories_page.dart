import 'package:expense_tracker/Shopping_App/data/dummy_data.dart';
import 'package:expense_tracker/Shopping_App/models/categorie.dart';
import 'package:expense_tracker/Shopping_App/models/produit.dart';
import 'package:expense_tracker/Shopping_App/widgets/categorie_card.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final List<Categorie> categories;
  final Function(Categorie) onCategoryTap;
  final Function(Produit) onProductTap;

  const CategoriesPage({
    super.key,
    required this.categories,
    required this.onCategoryTap,
    required this.onProductTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final categorie = dummyCategories[index];
        return CategorieCard(
          categorie: categorie,
          onTap: () => onCategoryTap(categorie),
        );
      },
    );
  }
}
