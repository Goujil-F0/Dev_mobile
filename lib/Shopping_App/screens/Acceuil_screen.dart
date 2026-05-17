import 'package:expense_tracker/Shopping_App/data/dummy_data.dart';
import 'package:expense_tracker/Shopping_App/models/categorie.dart';
import 'package:expense_tracker/Shopping_App/models/produit.dart';
import 'package:expense_tracker/Shopping_App/screens/categories_page.dart';
import 'package:expense_tracker/Shopping_App/screens/favoris_screen.dart';
import 'package:flutter/material.dart';

class AcceuilScreen extends StatefulWidget {
  const AcceuilScreen({super.key});

  @override
  State<AcceuilScreen> createState() => _AcceuilScreenState();
}

class _AcceuilScreenState extends State<AcceuilScreen> {
  int currentIndex = 0;
  List<Produit> favoris = [];

  Categorie? selectedCategory;
  Produit? selectedProduit;

  void toggleFavori(Produit produit) {
    setState(() {
      if (favoris.contains(produit)) {
        favoris.remove(produit);
      } else {
        favoris.add(produit);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 192, 136, 189),

        // bouton retour dynamique
        leading: (selectedCategory != null || selectedProduit != null)
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    if (selectedProduit != null) {
                      selectedProduit = null;
                    } else {
                      selectedCategory = null;
                    }
                  });
                },
              )
            : null,

        // titre dynamique
        title: Text(
          selectedProduit != null
              ? selectedProduit!.nom
              : selectedCategory != null
              ? selectedCategory!.nom
              : 'Categories',
        ),
        centerTitle: true,
      ),

      // BODY DYNAMIQUE
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: currentIndex == 0
            ? (selectedProduit != null
                  // DÉTAIL PRODUIT
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: favoris.contains(selectedProduit!)
                                ? Colors.red
                                : Colors.grey,
                          ),
                          onPressed: () {
                            toggleFavori(selectedProduit!);
                          },
                        ),
                        // image produit
                        Image.asset(
                          selectedProduit!.image,
                          height: 200,
                          errorBuilder: (context, error, stackTrace) {
                            return Text("Erreur: ${selectedProduit!.image}");
                          },
                        ),

                        const SizedBox(height: 10),
                        //nom
                        Text(
                          selectedProduit!.nom,
                          style: const TextStyle(fontSize: 22),
                        ),
                        const SizedBox(height: 10),
                        //description
                        Text(selectedProduit!.description),
                        const SizedBox(height: 10),
                        //prix
                        Text("${selectedProduit!.prix}MAD"),
                      ],
                    )
                  // 📦 LISTE PRODUITS
                  : selectedCategory != null
                  ? ListView.builder(
                      itemCount: selectedCategory!.produits.length,
                      itemBuilder: (context, index) {
                        final product = selectedCategory!.produits[index];

                        return ListTile(
                          title: Text(product.nom),
                          subtitle: Text(product.description),
                          trailing: Text("${product.prix} MAD"),
                          onTap: () {
                            setState(() {
                              selectedProduit = product;
                            });
                          },
                        );
                      },
                    )
                  // 🧱 GRID CATÉGORIES
                  : CategoriesPage(
                      categories: dummyCategories,
                      onCategoryTap: (cat) {
                        setState(() {
                          selectedCategory = cat;
                        });
                      },
                      onProductTap: (_) {},
                    ))
            : FavorisScreen(favoris: favoris),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 192, 136, 189),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Category',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoris'),
        ],
      ),
    );
  }
}
