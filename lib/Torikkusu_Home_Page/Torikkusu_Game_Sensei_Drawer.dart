import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Torikkusu_Home_Page_TitleText.dart';
import 'Torikkusu_Theme_Changer.dart';

class Sensei_Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<Theme_Changer>(context);
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
                  colors:[
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("設定",
                style: TitleText.Sensei_Game_Drawer_Japan_Font(context),
                ),
                Text("Settings",
                  style: TitleText.Sensei_Game_Drawer_English_Font(context),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.dark_mode_rounded, color: Theme.of(context).colorScheme.primary,
            ),
            title: Text('Dark Mode',
              style: TitleText.Sensei_Game_Drawer_List(context),
            ),
            trailing: Switch(
              activeTrackColor: Theme.of(context).colorScheme.secondary, // Change this to the desired active track color
              inactiveTrackColor: Theme.of(context).colorScheme.secondary, // Change this to the desired inactive track color
              activeColor: Theme.of(context).colorScheme.surfaceTint, // Change this to the desired active thumb color
              inactiveThumbColor: Theme.of(context).colorScheme.surface,
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                themeProvider.toggleTheme();
              },
            ),
          ),
        ],
      ),
    );
  }
}
