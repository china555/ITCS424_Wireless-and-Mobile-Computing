import 'package:flutter/material.dart';

final appBar = AppBar(
  elevation: 0,
  backgroundColor: Colors.white,
  leading: Icon(
    Icons.menu,
    color: Colors.black,
  ),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
      onPressed: () {},
    ),
  ],
);
