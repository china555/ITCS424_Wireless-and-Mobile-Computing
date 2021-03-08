import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors/sensors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: GameGuessWord(),
    );
  }
}

class GameGuessWord extends StatefulWidget {
  @override
  _GameGuessWordState createState() => _GameGuessWordState();
}

class _GameGuessWordState extends State<GameGuessWord> {
  Color _backgroundColor = Colors.indigo;

  /// Upright: [-10, 0, 0]
  /// Tilt forward: [0, 0, -10]
  /// Tilt backward: [0, 0, 10]

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        // Manipulate the UI here, something like:
        if (event.z < -9) {
          _backgroundColor = Colors.green;
        } else if (event.z > 9) {
          _backgroundColor = Colors.red;
        } else {
          _backgroundColor = Colors.indigo;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
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
