import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 54, 39, 1),
      body: Container(
        alignment: Alignment(0.0, -0.8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'A WHOLE\nNEW\nWORD',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 64,
                  color: Colors.white,
                ),
              ),
            ]),
      ),
    );
  }
}
