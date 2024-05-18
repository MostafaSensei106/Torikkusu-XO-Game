import 'package:flutter/material.dart';

class TitleText {

  static Sensei_Home_Japan_Font(BuildContext context) {
    return TextStyle(
        color: Theme
            .of(context)
            .colorScheme
            .primary,
        fontFamily: 'YujiSyuku',
        fontSize: 25,
        fontWeight: FontWeight.bold
    );
  }

  static Sensei_Home_Romiji_Font(BuildContext context) {
    return TextStyle(
        color: Theme
            .of(context)
            .colorScheme
            .secondary,
        fontFamily: 'Overlock',
        fontSize: 25,
    );
  }

  static Sensei_Home_Button_Font(BuildContext context) {
    return TextStyle(
        color: Theme
            .of(context)
            .colorScheme
            .background,
        fontFamily: 'Overlock',
        fontSize: 25,
    );
  }

  static Sensei_Game_Header_Font(BuildContext context) {
    return TextStyle(
        color: Theme
            .of(context)
            .colorScheme
            .primary,
        fontFamily: 'Overlock',
        fontSize: 25,
    );
  }

  static Sensei_Game_Player_Font(BuildContext context) {
    return TextStyle(
        color: Theme
            .of(context)
            .colorScheme
            .surface,
        fontFamily: 'Overlock',
        fontSize: 25,
        fontWeight: FontWeight.bold
    );
  }

  static Sensei_Game_Score_Font(BuildContext context) {
    return TextStyle(
        color: Theme
            .of(context)
            .colorScheme
            .secondary,
        fontFamily: 'Overlock',
        fontSize: 25,
    );
  }
}
