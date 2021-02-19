import 'package:flutter/material.dart';

class SelectCardGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 350,
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
              print('Hello1');
            },
          ),
        ),
      ],
    );
  }
}
