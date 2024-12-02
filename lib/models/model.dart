import 'dart:convert';

class MenuItem {
  final int id;
  final String name;
  final String description;
  final List<String> ingredients;
  final bool spicy;
  final bool vegetarian;
  final double price;
  final String imageUrl;

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.spicy,
    required this.vegetarian,
    required this.price,
    required this.imageUrl,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      ingredients: List<String>.from(json['ingredients']),
      spicy: json['spicy'],
      vegetarian: json['vegetarian'],
      price: json['price'].toDouble(),
      imageUrl: json['image'],
    );
  }
}
