import 'package:flutter/material.dart';
//import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

Card _buildProductCard(String productName, String productType,
    double productPrice, String imagePath) {
  return Card(
    elevation: 4,
    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: ListTile(
      leading: Image.asset(
        imagePath,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
      title: Text(productName),
      subtitle: Text(productType),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('\$$productPrice'),
          SizedBox(height: 8),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Add product to cart logic here
            },
          ),
        ],
      ),
    ),
  );
}
