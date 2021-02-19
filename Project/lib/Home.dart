import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 35, 126, 1),
      body: ListView(
        itemExtent: 265,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  'A WHOLE\nNEW\nWORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'IndieFlower',
                      fontSize: 60,
                      color: Colors.white,
                      height: 1.3),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 350,
                height: 220,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/movie.jpg'),
                      fit: BoxFit.cover),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    print('Hello1');
                  },
                ),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       width: 320,
          //       height: 200,
          //       // margin: EdgeInsets.only(top: 30),
          //       // alignment: Alignment.center,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         image: DecorationImage(
          //             image: AssetImage('assets/images/sport.jpg'),
          //             fit: BoxFit.fitWidth),
          //       ),
          //       child: FlatButton(
          //         padding: EdgeInsets.all(0.0),
          //         onPressed: () {
          //           print('Hello2');
          //         },
          //       ),
          //     ),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       width: 320,
          //       height: 200,
          //       // margin: EdgeInsets.only(top: 30),
          //       // alignment: Alignment.center,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         image: DecorationImage(
          //             image: AssetImage('assets/images/food.jpg'),
          //             fit: BoxFit.fitWidth),
          //       ),
          //       child: FlatButton(
          //         padding: EdgeInsets.all(0.0),
          //         onPressed: () {
          //           print('Hello3');
          //         },
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
      // body: CustomScrollView(
      //   slivers: <Widget>[
      //     SliverList(
      //         delegate: SliverChildListDelegate([
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: <Widget>[
      //           Container(
      //             margin: EdgeInsets.only(top: 30),
      //             child: Text(
      //               'A WHOLE\nNEW\nWORD',
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                 fontFamily: 'IndieFlower',
      //                 fontSize: 64,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Container(
      //             width: 320,
      //             height: 200,
      //             // alignment: Alignment.center,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               image: DecorationImage(
      //                   image: AssetImage('assets/images/movie.jpg'),
      //                   fit: BoxFit.fitWidth),
      //             ),
      //             child: FlatButton(
      //               padding: EdgeInsets.all(0.0),
      //               onPressed: () {
      //                 print('Hello1');
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Container(
      //             width: 320,
      //             height: 200,
      //             margin: EdgeInsets.only(top: 30),
      //             // alignment: Alignment.center,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               image: DecorationImage(
      //                   image: AssetImage('assets/images/sport.jpg'),
      //                   fit: BoxFit.fitWidth),
      //             ),
      //             child: FlatButton(
      //               padding: EdgeInsets.all(0.0),
      //               onPressed: () {
      //                 print('Hello2');
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Container(
      //             width: 320,
      //             height: 200,
      //             margin: EdgeInsets.only(top: 30),
      //             // alignment: Alignment.center,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               image: DecorationImage(
      //                   image: AssetImage('assets/images/food.jpg'),
      //                   fit: BoxFit.fitWidth),
      //             ),
      //             child: FlatButton(
      //               padding: EdgeInsets.all(0.0),
      //               onPressed: () {
      //                 print('Hello3');
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     ]))
      //   ],
      // ),
    );
  }
}
