import 'package:flutter/material.dart';
import 'Torikkusu_Game_Ai_Button.dart';
import 'Torikkusu_Home_Page_TitleText.dart';
import 'Torikkusu_Game_Button.dart';

class Home_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 50.0),
            Text(
              'サークルズとクロス',
              style:TitleText.Sensei_Home_Japan_Font(context),
            ),
            Text(
              "Torikkusu",
              style: TitleText.Sensei_Home_Romiji_Font(context),
            ),

            const SizedBox(height: 50.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(130.0),
              child: Image.asset("assets/images/Sensei_Logo.png",filterQuality: FilterQuality.high,scale: 3,isAntiAlias: true,),
            ),
            // Builder(
            //   builder: (context) {
            //     return  Icon(
            //       Icons.account_box_sharp,
            //       color: Theme.of(context).colorScheme.secondary,
            //       size: 140,
            //     );
            //   }
            // ),
            const SizedBox(height: 50.0),

               Sensei_Ai(),
                const SizedBox(height: 25,),
            Besto_Friendo(),
          ],
        ),
      ),
    );
  }
}
