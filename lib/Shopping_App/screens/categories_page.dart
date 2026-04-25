import 'package:expense_tracker/Shopping_App/data/dummy_data.dart';
import 'package:expense_tracker/Shopping_App/models/categorie.dart';
import 'package:expense_tracker/Shopping_App/screens/Acceuil_screen.dart';
import 'package:expense_tracker/Shopping_App/widgets/categorie_card.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  Categorie? selectedCategory;
  @override
  Widget build(BuildContext context) {
    if (selectedCategory == null) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: dummyCategories.length,
        itemBuilder: (context, index) {
          final categorie = dummyCategories[index];
          return CategorieCard(
            categorie: categorie,
            onTap: () {
              print("CLICK OK");
              setState(() {
                selectedCategory = categorie;
              });
            },
          );
        },
      );
    } else {
      return ListView.builder(
        itemCount: selectedCategory!.produit.length,
        itemBuilder: (context, index) {
          final product = selectedCategory!.produit[index];
          return ListTile(
            title: Text(product.nom),
            subtitle: Text(product.description),
            trailing: Text("${product.prix} MAD"),
          );
        },
      );
    }
  }
}
