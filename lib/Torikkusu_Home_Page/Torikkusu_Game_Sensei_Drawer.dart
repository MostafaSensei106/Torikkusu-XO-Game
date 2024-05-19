import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Torikkusu_Home_Page_TitleText.dart';
import 'Torikkusu_Theme_Model.dart';

class Sensei_Drawer extends StatefulWidget {
  @override
  _Sensei_DrawerState createState() => _Sensei_DrawerState();
}

class _Sensei_DrawerState extends State<Sensei_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, themeModel, child) {
        return Drawer(
          backgroundColor: Theme.of(context).colorScheme.background,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "設定",
                      style: TitleText.Sensei_Game_Drawer_Japan_Font(context),
                    ),
                    Text(
                      "Settings",
                      style: TitleText.Sensei_Game_Drawer_English_Font(context),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.dark_mode_rounded,
                  color: Theme.of(context).colorScheme.primary,
                  size: 35,
                ),
                title: Text(
                  'Dark Mode',
                  style: TitleText.Sensei_Game_Drawer_List(context),
                ),
                trailing: Switch(
                  activeTrackColor: Theme.of(context).colorScheme.secondary,
                  inactiveTrackColor: Theme.of(context).colorScheme.secondary,
                  activeColor: Theme.of(context).colorScheme.surfaceTint,
                  inactiveThumbColor: Theme.of(context).colorScheme.surface,
                  value: themeModel.isDark,
                  onChanged: (value) {
                    themeModel.isDark = value;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}