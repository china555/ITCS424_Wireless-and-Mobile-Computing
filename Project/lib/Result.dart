import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Navigator.popUntil(context, ModalRoute.withName('/screen2'));
class ResultPage extends StatelessWidget {
  int score;
  ResultPage({Key key, this.score});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    Color _backgroundColor = Color.fromRGBO(119, 172, 241, 1);
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'You Got ${this.score} Point',
              style: TextStyle(
                fontSize: 60,
                fontFamily: 'IndieFlower',
              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.indigo[800],
                shape: CircleBorder(),
              ),
              child: IconButton(
                iconSize: 50,
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
