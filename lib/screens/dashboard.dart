import 'package:flutter/material.dart';
import 'package:food_menu/models/json_data.dart';
import 'package:food_menu/screens/category_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food Menu")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryCard(
            categoryName: "Pizzas",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen(items: pizzaItems)),
              );
            },
          ),
          CategoryCard(
            categoryName: "Desserts",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen(items: dessertItems)),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final VoidCallback onTap;

  CategoryCard({required this.categoryName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
