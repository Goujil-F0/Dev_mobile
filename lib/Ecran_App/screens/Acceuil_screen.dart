import 'package:expense_tracker/Ecran_App/data/dummy_data.dart';
import 'package:expense_tracker/Ecran_App/models/categorie.dart';
import 'package:expense_tracker/Ecran_App/screens/categorie_screen.dart';
import 'package:flutter/material.dart';

class AcceuilScreen extends StatefulWidget {
  const AcceuilScreen({super.key});

  @override
  State<AcceuilScreen> createState() => _AcceuilScreenState();
}

class _AcceuilScreenState extends State<AcceuilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping app'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 144, 182, 248),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: dummyCategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final categorie = dummyCategories[index];

            return CategorieCard(categorie: categorie);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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

class CategorieCard extends StatelessWidget {
  final Categorie categorie;

  const CategorieCard({super.key, required this.categorie});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          print("clicked");
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => CategorieScreen(categorie: categorie),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 58, 92, 152),
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
