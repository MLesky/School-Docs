import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_docs/utils/utils.dart';

// TODO: Implement light and dark themes
/// TODO: Change [textTheme]
/// TODO: Implement theme Provider
class Themes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: kPrimaryColor,
    primarySwatch: kPrimarySwatch,

    textTheme: TextTheme(

      bodyLarge: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
          fontSize: 15,
        )
      ),
      bodySmall: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
            fontSize: 13,
          )
      ),
      bodyMedium: GoogleFonts.robotoSlab(
      textStyle: const TextStyle(
      fontSize: 10,
    )
  ),
      headlineLarge: GoogleFonts.rufina(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: kPrimaryColor,
          )
      ),
      titleMedium: GoogleFonts.ledger(
        textStyle: const TextStyle(
          color: kPrimaryColor,
        )
      ),
    ),

    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.rufina(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )
      ),
      )
  );
}