import 'dart:convert';

import 'model.dart';

const String jsonData = '''
{
  "pizza": [
    {
      "id": 0,
      "name": "Margherita",
      "description": "Classic pizza with tomato sauce and mozzarella.",
      "ingredients": ["tomato sauce", "mozzarella"],
      "spicy": false,
      "vegetarian": true,
      "price": 17.0,
      "image": "https://i.imgur.com/8B8YLOo.jpg"
    },
    {
      "id": 1,
      "name": "Pepperoni",
      "description": "A classic pepperoni pizza.",
      "ingredients": ["tomato sauce", "mozzarella", "double pepperoni"],
      "spicy": false,
      "vegetarian": false,
      "price": 20.0,
      "image": "https://i.imgur.com/OHHctnf.jpg"
    },
    {
      "id": 2,
      "name": "Rome",
      "description": "Pizza with ham, mushrooms, and beef cubes.",
      "ingredients": ["tomato sauce", "mozzarella", "ham", "mushrooms", "beef cubes"],
      "spicy": false,
      "vegetarian": false,
      "price": 25.75,
      "image": "https://i.imgur.com/3ZTwCfz.png"
    }
  ],
  "dessert": [
    {
      "id": 0,
      "name": "Brownie",
      "description": "A delicious cake with chocolate and hazelnuts.",
      "ingredients": [],
      "spicy": false,
      "vegetarian": false,
      "price": 15,
      "image": "https://i.imgur.com/7WbfaDN.png"
    },
    {
      "id": 1,
      "name": "Chocolate Tortilla",
      "description": "Tortilla filled with chocolate cream.",
      "ingredients": [],
      "spicy": false,
      "vegetarian": false,
      "price": 12,
      "image": "https://i.imgur.com/Mgsc3IZ.png"
    },
    {
      "id": 2,
      "name": "Apple Pie",
      "description": "Hot pie with apple and cinnamon.",
      "ingredients": [],
      "spicy": false,
      "vegetarian": true,
      "price": 15,
      "image": "https://i.imgur.com/OWIVhWX.png"
    },
    {
      "id": 3,
      "name": "Cheesecake",
      "description": "Cheesecake with berries topping.",
      "ingredients": [],
      "spicy": false,
      "vegetarian": false,
      "price": 15,
      "image": "https://i.imgur.com/AsldA7x.png"
    }
  ]
}
''';


Map<String, dynamic> menuData = jsonDecode(jsonData);

List<MenuItem> pizzaItems = (menuData['pizza'] as List)
    .map((item) => MenuItem.fromJson(item))
    .toList();

List<MenuItem> dessertItems = (menuData['dessert'] as List)
    .map((item) => MenuItem.fromJson(item))
    .toList();
