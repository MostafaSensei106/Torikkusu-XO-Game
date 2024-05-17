import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Torikkusu_Logic.dart';
import '../Torikkusu_Home_Page/Torikkusu_Home_Page_TitleText.dart';

class GameGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gameLogic = Provider.of<GameLogic>(context);

    return GridView.builder(
      itemCount: 9,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => gameLogic.tap(context, index),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            ),
            child: Center(
              child: Text(
                gameLogic.Tap_To_Show_X_or_O[index],
                style: TitleText.Sensei_Game_Player_Font(context),
              ),
            ),
          ),
        );
      },
    );
  }
}
