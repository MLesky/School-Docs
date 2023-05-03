import 'package:flutter/material.dart';
import 'package:school_docs/themes/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = Themes.darkTheme;

  ThemeData light = Themes.lightTheme;
  ThemeData dark = Themes.darkTheme;

  void swapTheme() async {
    _theme = isDarkMode ? light : dark;
    notifyListeners();
  }

  ThemeData get themeData => _theme;
  bool get isDarkMode => _theme == dark;
}