import 'package:expense_tracker/Shopping_App/models/produit.dart';
import 'package:flutter/material.dart';

class FavorisScreen extends StatelessWidget {
  final List<Produit> favoris;

  const FavorisScreen({super.key, required this.favoris});

  @override
  Widget build(BuildContext context) {
    if (favoris.isEmpty) {
      return const Center(child: Text("Aucun favori"));
    }

    return ListView.builder(
      itemCount: favoris.length,
      itemBuilder: (context, index) {
        final product = favoris[index];

        return ListTile(
          title: Text(product.nom),
          subtitle: Text(product.description),
          trailing: Text("${product.prix} MAD"),
        );
      },
    );
  }
}