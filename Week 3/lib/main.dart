import 'package:flutter/material.dart';

// void main() {
//   print("Hello Console, from phone");
//   runApp(MyApp());
// }

// void main() {
//   var app = MaterialApp(title: "My App", home: Text('\n6188089\nNATTAWIPA'));
//   runApp(app);
// }

// void main() {
//   var app = MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Test Scaffold'),
//       ),
//       body: Text('\n6188089\nNATTAWIPA'),
//     ),
//     theme: ThemeData(primarySwatch: Colors.green),
//   );
//   runApp(app);
// }

// void main() {
//   var app = MyApp();
//   runApp(app);
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Stateless Widget Test",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Test Scaffold'),
//         ),
//         body: Text('\n6188089\nNATTAWIPA'),
//       ),
//       theme: ThemeData(primarySwatch: Colors.lightGreen),
//     );
//   }
// }

// void main() {
//   var app = MyApp();
//   runApp(app);
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Stateless Widget: Test",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Test Scaffold Center'),
//         ),
//         body: Center(
//           child: Text(
//             '\n6188089\nNattawipa',
//             style: TextStyle(fontSize: 28, color: Colors.pink),
//           ),
//         ),
//       ),
//       theme: ThemeData(primarySwatch: Colors.lightGreen),
//     );
//   }
// }

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateless Widget: Test",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Scaffold Center'),
        ),
        body: Center(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Nattawipa',
                      style: TextStyle(fontSize: 62, color: Colors.pink)),
                  Text('6188089',
                      style: TextStyle(fontSize: 62, color: Colors.pinkAccent)),
                ],
              )),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: Text('Set Full Screen Background Image')),
//             body: Center(
//                 child: Container(
//                     constraints: BoxConstraints.expand(),
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
//                             fit: BoxFit.cover)),
//                     child: Center(
//                       child: Text(
//                         'Set Full Screen Background Image in Flutter',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             color: Colors.brown,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     )))));
//   }
// }
