import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class GameGuessWord extends StatefulWidget {
  @override
  _GameGuessWordState createState() => _GameGuessWordState();
}

class _GameGuessWordState extends State<GameGuessWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height) / 2 - 60),
            child: Text(
              'FootBall',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: (MediaQuery.of(context).size.height / 8)),
            padding: EdgeInsets.all(10),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amber[700],
                ),
                child: Text(
                  '60',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
