import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Torikkusu_Logic.dart';
import 'Torikkusu_Player.dart';
import 'Torikkusu_Game_Grid.dart';

class Torikkusu_Main_Game extends StatefulWidget {
  const Torikkusu_Main_Game({super.key});

  @override
  State<Torikkusu_Main_Game> createState() => _Torikkusu_Main_GameState();
}

class _Torikkusu_Main_GameState extends State<Torikkusu_Main_Game> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GameLogic(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Consumer<GameLogic>(
                    builder: (context, gameLogic, child) => Player_Score(
                      Player_Name: 'Player X',
                      score: gameLogic.xScore,
                    ),
                  ),
                  Consumer<GameLogic>(
                    builder: (context, gameLogic, child) => Player_Score(
                      Player_Name: 'Player O',
                      score: gameLogic.oScore,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: GameGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
