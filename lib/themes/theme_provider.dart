import 'package:flutter/material.dart';
import 'package:school_docs/themes/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _theme;
  late SharedPreferences themePrefs;
  ThemeData light = Themes.lightTheme;
  ThemeData dark = Themes.darkTheme;

  ThemeProvider({required bool isDarkMode}) {
    _theme = isDarkMode ? dark : light;
  }

  void swapTheme() async {
    _theme = isDarkMode ? light : dark;
    themePrefs = await SharedPreferences.getInstance();
    themePrefs.setBool('isDarkMode', isDarkMode);
    print('Theme set to ${isDarkMode ? 'dark mode' : 'light mode'}');
    notifyListeners();
  }

  ThemeData get themeData => _theme;
  bool get isDarkMode => _theme == dark;
}