import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Torikkusu_Home_Page/Torikkusu_Home_Page.dart';
import 'Torikkusu_Game/Torikkusu_Main_Game.dart';
import 'Theme/Torikkusu_Light_Theme.dart';
import 'Theme/Torikkusu_Dark_Theme.dart';
import 'Torikkusu_Home_Page/Torikkusu_Theme_Model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, themeModel, child) {
          return MaterialApp(
            title: 'Torikkusu',
            themeMode: themeModel.themeMode,
            theme: Torikkusu_Light,
            darkTheme: Torikkusu_Dark,
            routes: {
              '/': (context) => Home_Page(),
              '/Torikkusu_Game/Torikkusu_Main_Game.dart': (context) => const Torikkusu_Main_Game(),
            },
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}