import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 54, 39, 1),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'A WHOLE\nNEW\nWORD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IndieFlower',
                      fontSize: 64,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 200,
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/movie.jpg'),
                        fit: BoxFit.fitWidth),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      print('Hello');
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 200,
                  margin: EdgeInsets.only(top: 30),
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/sport.jpg'),
                        fit: BoxFit.fitWidth),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      print('Hello');
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 200,
                  margin: EdgeInsets.only(top: 30),
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/food.jpg'),
                        fit: BoxFit.fitWidth),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      print('Hello');
                    },
                  ),
                ),
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
