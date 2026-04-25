
import 'package:expense_tracker/Shopping_App/models/categorie.dart';
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
  final List<Widget> pages = [CategoriesPage(), FavorisScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentIndex == 0 ? 'Categories' : 'Favoris'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 192, 136, 189),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 192, 136, 189),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Color.fromARGB(255, 70, 82, 88),
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoris'),
        ],
      ),
    );
  }
}

class CategorieCard extends StatelessWidget {
  final Categorie categorie;

  const CategorieCard({super.key, required this.categorie});

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}
