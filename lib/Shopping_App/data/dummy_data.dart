import 'package:expense_tracker/Shopping_App/models/categorie.dart';
import 'package:expense_tracker/Shopping_App/models/produit.dart';

List<Categorie> dummyCategories = [
  Categorie(nom: 'Sport', produit: [
    Produit(id: '1', nom: 'leggins', prix: 150.0, description: '100% coton'),
    Produit(id: '2', nom: 'jogging', prix: 250.0, description: 'style oversize avec des poches')
  ]),
  Categorie(nom: 'Electronique', produit: [
    Produit(id: '1', nom: 'Tv', prix: 5000.0, description: 'Samsung'),
  ]),
  Categorie(nom: 'Alimentation', produit: [
  Produit(id: '1', nom: 'Pain', prix: 2.5, description: 'Pain frais du jour'),
  Produit(id: '2', nom: 'Lait', prix: 7.0, description: 'Lait demi-écrémé 1L'),
  Produit(id: '3', nom: 'Oeufs', prix: 15.0, description: 'Boîte de 12 oeufs'),
  ]),
  Categorie(nom: 'Beauté', produit: [
  Produit(id: '1', nom: 'Shampooing', prix: 45.0, description: 'Pour cheveux secs'),
  Produit(id: '2', nom: 'Crème visage', prix: 120.0, description: 'Hydratation 24h'),
  ])
];