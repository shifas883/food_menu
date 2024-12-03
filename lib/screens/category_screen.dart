import 'package:flutter/material.dart';
import 'package:food_menu/models/model.dart';

class CategoryScreen extends StatelessWidget {
  final List<MenuItem> items;

  CategoryScreen({required this.items});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title: Text('Menu Items',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {

            Navigator.pop(context);
          },
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.orangeAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            width: w,
            decoration: BoxDecoration(
              // color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.1,
                color: Colors.black.withOpacity(0.3)
              )

            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(item.imageUrl, height: 200,width: w, fit: BoxFit.cover),
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
