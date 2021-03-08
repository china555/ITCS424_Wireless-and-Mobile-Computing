import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import 'package:flutter/services.dart';

class GameGuessWord extends StatefulWidget {
  List words = [];
  GameGuessWord(this.words);
  @override
  _GameGuessWordState createState() => _GameGuessWordState(words);
}

class _GameGuessWordState extends State<GameGuessWord> {
  Color _backgroundColor = Colors.indigo;
  List words = [];
  int index = 0;
  _GameGuessWordState(this.words);
  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      bool test = true;
      if (event.z < 3 || event.z > -3) {
        test = false;
      }
      setState(() {
        // Manipulate the UI here, something like:
        print(words[index]);
        if (event.z < -9) {
          _backgroundColor = Colors.green;
          if (event.z == 0) {
            index++;
          }
        } else if (event.z > 9) {
          _backgroundColor = Colors.red;
          if (event.z == 0) {
            index++;
          }
        } else {
          _backgroundColor = Colors.indigo;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height) / 2 - 60),
            child: Text(
              "${words[index]}",
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
