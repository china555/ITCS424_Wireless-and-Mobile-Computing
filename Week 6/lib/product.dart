import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  final String brand;

  Product(this.name, this.brand, this.image, this.price);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello'),
    );
  }
}
