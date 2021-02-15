import 'package:flutter/material.dart';
import 'Money.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My account'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            MoneyBox('Balance', 100000.0, Colors.blue, 120),
            MoneyBox('Income', 50000.0, Colors.green, 100),
            MoneyBox('Expense', 40000.0, Colors.red, 100),
            MoneyBox('Overdue', 3600.0, Colors.orange, 100),
          ],
        ),
      ),
    );
  }
}
