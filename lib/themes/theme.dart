import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_docs/utils/utils.dart';
export 'package:school_docs/themes/theme_provider.dart';

/// TODO: Persist theme state
class Themes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: kPrimaryColor,
    unselectedWidgetColor: Colors.black12,
    primarySwatch: kPrimarySwatch,
    dividerColor: kPrimaryColor,
    focusColor: kPrimaryColor,
    dividerTheme: const DividerThemeData(
      color: kSecondaryColor,
      thickness: 1,
      space: Spacings.sm,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
        fontSize: 15,
      )),
      bodySmall: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
        fontSize: 10,
      )),
      bodyMedium: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
        fontSize: 13,
      )),
      headlineLarge: GoogleFonts.rufina(
          textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: kPrimaryColor,
      )),
      titleMedium: GoogleFonts.ledger(
          textStyle: const TextStyle(
        color: kPrimaryColor,
      )),
      titleLarge: GoogleFonts.ledger(
          textStyle: const TextStyle(
        color: Colors.black26,
        fontSize: 20,
      )),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
    )),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.rufina(
          textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      )),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      dividerColor: Colors.white,
      unselectedWidgetColor: Colors.white30,
      focusColor: kSecondaryColor,
      dividerTheme: const DividerThemeData(
        color: kSecondaryColor,
        thickness: 1,
        space: Spacings.sm,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(kSecondaryColor),
        foregroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
      )),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(kSecondaryColor),
      )),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
          fontSize: 15,
        )),
        bodySmall: GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
          fontSize: 10,
          color: kSecondaryColor,
        )),
        bodyMedium: GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
          fontSize: 13,
        )),
        headlineLarge: GoogleFonts.rufina(
            textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        )),
        titleMedium: GoogleFonts.ledger(
            textStyle: const TextStyle(
          color: Colors.white,
        )),
        titleLarge: GoogleFonts.ledger(
            textStyle: const TextStyle(
          color: Colors.white70,
          fontSize: 20,
        )),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.rufina(
            textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        )),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: kSecondaryColor,
        showCloseIcon: true,
        closeIconColor: kPrimaryColor,
      ));
}
