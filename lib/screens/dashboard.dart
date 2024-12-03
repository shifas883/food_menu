import 'package:flutter/material.dart';
import 'package:food_menu/models/json_data.dart';
import 'package:food_menu/screens/category_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Food Menu',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryCard(
            categoryName: "Pizzas",
            img1: "https://img.freepik.com/free-photo/top-view-vegetarian-pizza-with-eggplant-bell-pepper-red-onion-tomato-mushroom_141793-2454.jpg?t=st=1733239522~exp=1733243122~hmac=53ab4e4a1775ed1f9f98c6b7b99e9da02098f318042af7fa259b46bf8bf285d2&w=1060",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen(items: pizzaItems)),
              );
            },
          ),
          SizedBox(height: 15,),
          CategoryCard(
            categoryName: "Desserts",
            img1: "https://img.freepik.com/free-photo/banana-waffle_1203-3646.jpg?t=st=1733239666~exp=1733243266~hmac=c0414fb02d2895fd072d6597ae9c9bb2fcdb8309030c0c96de840e5d9a23d51b&w=1060",
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
  final String img1;
  // final String img2;
  final VoidCallback onTap;

  CategoryCard({required this.categoryName, required this.onTap, required this.img1,});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: w,
        height: h/4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(image: NetworkImage(img1),
          fit: BoxFit.cover)
        ),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
