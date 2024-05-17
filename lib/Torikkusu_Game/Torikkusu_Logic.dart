import 'package:flutter/material.dart';

class GameLogic extends ChangeNotifier {
  bool checkTap = true;
  List<String> Tap_To_Show_X_or_O = List.filled(9, ' ');
  int xScore = 0;
  int oScore = 0;
  int noWin = 0;

  void tap(BuildContext context, int index) {
    if (Tap_To_Show_X_or_O[index] == ' ') {
      Tap_To_Show_X_or_O[index] = checkTap ? 'X' : 'O';
      checkTap = !checkTap;
      noWin += 1;
      notifyListeners();
      checkWinner(context);
    }
  }

  void cleanGame() {
    Tap_To_Show_X_or_O = List.filled(9, ' ');
    noWin = 0;
    notifyListeners();
  }

  void checkWinner(BuildContext context) {
    for (int i = 0; i < 9; i += 3) {
      if (Tap_To_Show_X_or_O[i] == Tap_To_Show_X_or_O[i + 1] &&
          Tap_To_Show_X_or_O[i] == Tap_To_Show_X_or_O[i + 2] &&
          Tap_To_Show_X_or_O[i] != ' ') {
        _showWinner(context, Tap_To_Show_X_or_O[i]);
        return;
      }
    }

    for (int i = 0; i < 3; ++i) {
      if (Tap_To_Show_X_or_O[i] == Tap_To_Show_X_or_O[i + 3] &&
          Tap_To_Show_X_or_O[i] == Tap_To_Show_X_or_O[i + 6] &&
          Tap_To_Show_X_or_O[i] != ' ') {
        _showWinner(context, Tap_To_Show_X_or_O[i]);
        return;
      }
    }

    if (Tap_To_Show_X_or_O[0] == Tap_To_Show_X_or_O[4] &&
        Tap_To_Show_X_or_O[0] == Tap_To_Show_X_or_O[8] &&
        Tap_To_Show_X_or_O[0] != ' ') {
      _showWinner(context, Tap_To_Show_X_or_O[0]);
      return;
    }

    if (Tap_To_Show_X_or_O[2] == Tap_To_Show_X_or_O[4] &&
        Tap_To_Show_X_or_O[2] == Tap_To_Show_X_or_O[6] &&
        Tap_To_Show_X_or_O[2] != ' ') {
      _showWinner(context, Tap_To_Show_X_or_O[2]);
      return;
    }

    if (noWin == 9) {
      _showDraw(context);
    }
  }

  void _showWinner(BuildContext context, String winner) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('The player $winner Wins'),
          actions: <Widget>[
            TextButton(
              child: Text('New Game'),
              onPressed: () {
                cleanGame();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

    if (winner == 'X') {
      xScore += 1;
    } else if (winner == 'O') {
      oScore += 1;
    }
  }

  void _showDraw(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Draw, no one wins'),
          actions: <Widget>[
            TextButton(
              child: Text('New Game'),
              onPressed: () {
                cleanGame();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
