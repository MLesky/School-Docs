import 'package:flutter/material.dart';
import 'package:school_docs/themes/theme.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _theme;

  ThemeData light = Themes.lightTheme;
  ThemeData dark = Themes.darkTheme;

  void swapTheme() async {
    _theme = _theme == dark ? light : dark;
    notifyListeners();
  }

  ThemeData get themeData => _theme;
  bool get isDarkMode => _theme == dark;
}