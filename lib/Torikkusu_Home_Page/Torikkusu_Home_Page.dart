import 'package:flutter/material.dart';
import 'Torikkusu_Game_Ai_Button.dart';
import 'Torikkusu_Home_Page_TitleText.dart';
import 'Torikkusu_Game_Button.dart';
import 'Torikkusu_Game_Sensei_Drawer.dart';

class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: Sensei_Drawer(),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'サークルズとクロス',
                    style: TitleText.Sensei_Home_Japan_Font(context),
                  ),
                  Text(
                    "Torikkusu",
                    style: TitleText.Sensei_Home_Romiji_Font(context),
                  ),
                  const SizedBox(height: 50.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(130.0),
                    child: Image.asset(
                      "assets/images/Sensei_Logo.png",
                      filterQuality: FilterQuality.high,
                      scale: 8,
                      isAntiAlias: true,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Sensei_Ai(),
                  const SizedBox(height: 25.0),
                  Besto_Friendo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
