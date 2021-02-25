import 'package:flutter/material.dart';
import 'appBar.dart';
import 'constants.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = cart;
    print("Hellooooooooooooooo$responseList");
    List<Widget> listItems = [];
    responseList.forEach(
      (post) {
        listItems.add(
          Padding(
            padding: EdgeInsets.all(18),
            child: Container(
              margin: EdgeInsets.all(12),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Text('awd'),
            ),
          ),
        );
      },
    );
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: MyAppBar(context),
          body: Column(
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(top: 8, left: 12, right: 12),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 1,
                        offset: Offset(2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text('awd'),
                ),
              ),
              Container(
                child: Container(
                  margin: EdgeInsets.only(top: 8, left: 12, right: 12),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text('awd'),
                ),
              ),
            ],
          )
          // body: Column(
          //   children: [
          //     ListView.builder(
          //       itemCount: itemsData.length,
          //       itemBuilder: (context, index) {
          //         return itemsData[index];
          //       },
          //     )
          //   ],
          // ),
          ),
    );
  }
}
