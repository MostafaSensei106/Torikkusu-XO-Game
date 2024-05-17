import 'package:flutter/material.dart';
import 'Torikkusu_Home_Page_TitleText.dart';
import '../Torikkusu_Game/Torikkusu_Main_Game.dart';
class Besto_Friendo extends StatelessWidget {

  late final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Torikkusu_Main_Game()),
      );
    },
       child: Text(
      'Besto Friendo Match',
      style: TitleText.Sensei_Home_Button_Font(context) ,
    ),
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    ),
    padding:
    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    textStyle: const TextStyle(fontSize: 20),
    backgroundColor: Theme.of(context).colorScheme.secondary,
    ),
    );
  }
}


