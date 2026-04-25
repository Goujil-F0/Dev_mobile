import 'package:expense_tracker/Shopping_App/models/categorie.dart';
import 'package:flutter/material.dart';

class CategorieScreen extends StatelessWidget {
  final Categorie categorie;
  const CategorieScreen({super.key, required this.categorie});

  @override
  Widget build(BuildContext context) {
    print("CategorieScreen opened");
    return Scaffold(
      appBar: AppBar(title: Text(categorie.nom)),
      body: Center(
        child: Text(
          'Nombre de produits: ${categorie.produit.length}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
