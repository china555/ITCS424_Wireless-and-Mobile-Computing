import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import 'package:flutter/services.dart';

class GameGuessWord extends StatefulWidget {
  final List words;
  GameGuessWord({Key key, this.words}) : super(key: key);
  @override
  _GameGuessWordState createState() => _GameGuessWordState(words);
}

class _GameGuessWordState extends State<GameGuessWord> {
  Color _backgroundColor = Colors.indigo;
  List words = [];
  int index = 0;
  bool test = true;
  dynamic acceleroEvent;
  _GameGuessWordState(this.words);
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.initState();
    acceleroEvent = accelerometerEvents.listen(
      (AccelerometerEvent event) {
        if (event.z < 3 && test == false && event.z > 0 ||
            event.z < 0 && event.z > -3 && test == false) {
          print(words.length);
          if (index < words.length - 1) {
            index++;
          } else {
            Navigator.pop(context);
          }
          test = true;
        }
        if (test) {
          if (mounted) {
            setState(
              () {
                // Manipulate the UI here, something like:
                if (event.z < -9) {
                  _backgroundColor = Colors.green;
                  test = false;
                } else if (event.z > 9) {
                  _backgroundColor = Colors.red;
                  test = false;
                } else {
                  _backgroundColor = Colors.indigo;
                }
              },
            );
          }
        }
      },
    );
  }

  @override
  void dispose() {
    acceleroEvent.dispose();
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Text(
                '${words[index]}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.2,
                  left: MediaQuery.of(context).size.width / 2.1),
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
          ],
        ),
      ),
    );
  }
}
