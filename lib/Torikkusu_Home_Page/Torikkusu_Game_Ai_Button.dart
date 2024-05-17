import 'package:flutter/material.dart';
import 'Torikkusu_Home_Page_TitleText.dart';

class Sensei_Ai extends StatelessWidget {
  late final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:  (){
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('AI Match Will Come Soon'),
              actions: <Widget>[
                TextButton(
                  child: Text('Ok Sensei'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: Text(
        'AI Match',
        style: TitleText.Sensei_Home_Button_Font(context),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
