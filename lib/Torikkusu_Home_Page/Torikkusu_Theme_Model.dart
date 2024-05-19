import 'package:flutter/material.dart';
import 'Torikkusu_Theme_Shared_Prefrences.dart';

class ThemeModel extends ChangeNotifier {
  late bool _isDark = false;
  late ThemeSharedPrefrences themeSharedPrefrences;
  ThemeMode _themeMode = ThemeMode.system;

  bool get isDark => _isDark;
  ThemeMode get themeMode => _themeMode;

  ThemeModel() {
    themeSharedPrefrences = ThemeSharedPrefrences();
    _initializeTheme();
  }

  set isDark(bool value) {
    _isDark = value;
    _themeMode = value ? ThemeMode.dark : ThemeMode.light;
    themeSharedPrefrences.setTheme(value);
    notifyListeners();
  }

  void _initializeTheme() async {
    bool? isFirstRun = await themeSharedPrefrences.isFirstRun();
    if (isFirstRun == null || isFirstRun) {
      _themeMode = ThemeMode.system;
      await themeSharedPrefrences.setFirstRun(false);
    } else {
      _isDark = await themeSharedPrefrences.getTheme();
      _themeMode = _isDark ? ThemeMode.dark : ThemeMode.light;
    }
    notifyListeners();
  }
}