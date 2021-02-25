import 'package:flutter/material.dart';
import 'appBar.dart';
import 'constants.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = cart;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add();
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(context),
        body: Text('waddw'),
      ),
    );
  }
}
