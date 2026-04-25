import 'package:expense_tracker/Shopping_App/models/categorie.dart';
import 'package:flutter/material.dart';

class CategorieCard extends StatelessWidget {
  final Categorie categorie;
  final VoidCallback onTap;

  const CategorieCard({
    super.key,
    required this.categorie,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 192, 136, 189),
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: Text(
            categorie.nom,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
