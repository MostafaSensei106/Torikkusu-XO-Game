import 'package:flutter/material.dart';

class Theme_Changer with ChangeNotifier {
  bool _isDarkMode;

  Theme_Changer() : _isDarkMode = WidgetsBinding.instance.window.platformBrightness == Brightness.dark;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
