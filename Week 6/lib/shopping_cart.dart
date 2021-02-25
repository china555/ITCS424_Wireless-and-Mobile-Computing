import 'package:flutter/material.dart';
import 'appBar.dart';
import 'constants.dart';

class Shopping_cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar,
        body: Text('waddw'),
      ),
    );
  }
}
