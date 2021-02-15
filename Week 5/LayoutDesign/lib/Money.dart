import 'package:flutter/material.dart';

class MoneyBox extends StatelessWidget {
  final String title; // List name
  final double amount; // Money Amount
  final Color color;
  final double size; // size of container
// Constructor
  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.size,
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${this.title}',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            '${this.amount}',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
