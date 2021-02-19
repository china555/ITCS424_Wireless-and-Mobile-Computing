import 'package:flutter/material.dart';
import 'Card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 35, 126, 1),
      body: ListView(
        itemExtent: 265,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  'A WHOLE\nNEW\nWORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'IndieFlower',
                      fontSize: 60,
                      color: Colors.white,
                      height: 1.3),
                ),
              ),
            ],
          ),
          SelectCardGame()
        ],
      ),
    );
  }
}
