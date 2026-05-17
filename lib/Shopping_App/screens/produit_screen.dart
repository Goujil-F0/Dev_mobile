// import 'package:expense_tracker/Shopping_App/models/produit.dart';
// import 'package:flutter/material.dart';

// class ProduitScreen extends StatefulWidget {
//   final List<Produit> produits;
//   const ProduitScreen({super.key, required this.produits});

//   @override
//   State<ProduitScreen> createState() => _ProduitScreenState();
// }

// class _ProduitScreenState extends State<ProduitScreen> {
//   Produit? selectedProduit;
//   @override
//   Widget build(BuildContext context) {
//     if (selectedProduit == null) {
//       return ListView.builder(
//         itemCount: widget.produits.length,
//         itemBuilder: (context, index) {
//           final produit = widget.produits[index];
//           return ListTile(
//             title: Text(produit.nom),
//             subtitle: Text(produit.description),
//             trailing: Text("${produit.prix} MAD"),

//             onTap: () {
//               setState(() {
//                 selectedProduit = produit;
//               });
//             },
//           );
//         },
//       );
//     } else {
//       return Column(
//         children: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 selectedProduit = null;
//               });
//             },
//             icon: const Icon(Icons.arrow_back),
//           ),

//           Text(selectedProduit!.nom, style: const TextStyle(fontSize: 24)),

//           Text(selectedProduit!.description),
//           Text("${selectedProduit!.prix} MAD"),
//         ],
//       );
//     }
//     ;
//   }
// }
