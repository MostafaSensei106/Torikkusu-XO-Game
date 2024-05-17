import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText {

  static TextStyle Sensei_Home_Japan_Font(BuildContext context) {
    return GoogleFonts.yujiSyuku(
        letterSpacing: 3,
        color: Theme.of(context).colorScheme.primary,
        fontSize: 35,
        fontWeight: FontWeight.bold

    );
  }




  static TextStyle Sensei_Home_Romiji_Font (BuildContext context){
    return GoogleFonts.overlock(
      letterSpacing: 3,
      color: Theme.of(context).colorScheme.secondary,
      fontSize:35,
        fontWeight: FontWeight.bold
    );
  }

  static TextStyle Sensei_Home_Button_Font(BuildContext context){
    return GoogleFonts.overlock(
    letterSpacing: 3,
    color: Theme.of(context).colorScheme.background,
    fontSize:35
    );
  }

  static TextStyle Sensei_Game_Header_Font(BuildContext context){
    return GoogleFonts.overlock(
        letterSpacing: 3,
        color: Theme.of(context).colorScheme.primary,
        fontSize:35,
        fontWeight: FontWeight.bold
    );
  }
  static TextStyle Sensei_Game_Player_Font(BuildContext context){
    return GoogleFonts.overlock(
        letterSpacing: 3,
        color: Theme.of(context).colorScheme.surface,
        fontSize:35,
        fontWeight: FontWeight.bold,
    );
  }

  static TextStyle Sensei_Game_Score_Font(BuildContext context){
    return GoogleFonts.overlock(
        letterSpacing: 3,
        color: Theme.of(context).colorScheme.surface,
        fontSize:30
    );
  }


}