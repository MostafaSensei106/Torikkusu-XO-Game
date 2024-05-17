import 'package:flutter/material.dart';
import '../Torikkusu_Home_Page/Torikkusu_Home_Page_TitleText.dart';

class Player_Score extends StatelessWidget {
  final String Player_Name;
  final int score;

  const Player_Score({required this.Player_Name, required this.score, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Player_Name,
            style: TitleText.Sensei_Game_Header_Font(context),
          ),
          Text(
            score.toString(),
            style: TitleText.Sensei_Game_Score_Font(context),
          ),
        ],
      ),
    );
  }
}
