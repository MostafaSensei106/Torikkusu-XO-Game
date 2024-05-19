import 'package:shared_preferences/shared_preferences.dart';

class ThemeSharedPrefrences {
  static const themeKey = 'theme';
  static const firstRunKey = 'firstRun';

  Future<void> setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(themeKey, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(themeKey) ?? false;
  }

  Future<bool?> isFirstRun() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(firstRunKey);
  }

  Future<void> setFirstRun(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(firstRunKey, value);
  }
}