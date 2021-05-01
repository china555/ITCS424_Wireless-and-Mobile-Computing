import 'package:flutter/material.dart';
import 'constants.dart';
import 'guess.dart';
import 'package:flutter/services.dart';

class SelectCardGame extends StatefulWidget {
  @override
  _SelectCardGameState createState() => _SelectCardGameState();
}

class _SelectCardGameState extends State<SelectCardGame> {
  List<Widget> selectCard;

  void getPostsData() {
    List<dynamic> cardData = gameSelected;
    List<Widget> listCard = [];
    cardData.forEach(
      (post) {
        listCard.add(
          Column(
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
                      image: AssetImage('${post["image"]}'), fit: BoxFit.cover),
                ),
                child: TextButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameGuessWord(
                          words: post["words"],
                        ),
                      ),
                    );
                    SystemChrome.setPreferredOrientations([
                      DeviceOrientation.portraitUp,
                      DeviceOrientation.portraitDown,
                    ]);
                  },
                  child: null,
                ),
              ),
            ],
          ),
        );
      },
    );
    if (mounted) {
      setState(() {
        selectCard = listCard;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: selectCard.length,
      itemBuilder: (context, index) {
        return selectCard[index];
      },
    );
  }
}
