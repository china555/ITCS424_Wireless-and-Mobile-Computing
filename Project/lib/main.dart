import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 54, 39, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
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
            children: [
              FlatButton(
                onPressed: null,
                child: Center(
                  child: Image.asset('assets/images')
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(182, 54, 39, 1),
//       body: Container(
//         alignment: Alignment(0.0, -0.8),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 'A WHOLE\nNEW\nWORD',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontFamily: 'IndieFlower',
//                   fontSize: 64,
//                   color: Colors.white,
//                 ),
//               ),
//             ]),
//       ),
//     );
//   }
// }
