import 'package:flutter/material.dart';
import 'package:food_menu/models/model.dart';

class CategoryScreen extends StatelessWidget {
  final List<MenuItem> items;

  CategoryScreen({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Items")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(item.imageUrl, height: 200, fit: BoxFit.cover),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text(item.description),
                      SizedBox(height: 4),
                      Text("Ingredients: ${item.ingredients.join(", ")}"),
                      Row(
                        children: [
                          Text("Spicy: ${item.spicy ? 'Yes' : 'No'}"),
                          SizedBox(width: 16),
                          Text("Vegetarian: ${item.vegetarian ? 'Yes' : 'No'}"),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text("Price: \$${item.price.toStringAsFixed(2)}"),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
