import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class ApplicationTheme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffB7935F),
    colorScheme: ColorScheme.fromSeed(
        primary: const Color(0xffB7935F),
        seedColor: const Color(0xffB7935F),
        onSecondary: Colors.black,
        onPrimary: const Color(0xffB7935F),
        shadow: const Color(0xffB7935F),
        onBackground: const Color(0xffF8F8F8)),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 27,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xffB7935F).withOpacity(0.7),
    ),
    dividerColor: const Color(0xffB7935F),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xff141A2E),
    colorScheme: ColorScheme.fromSeed(
        primary: const Color(0xff141A2E),
        seedColor: const Color(0xff141A2E),
        onSecondary: const Color(0xffFACC1D),
        onPrimary: const Color(0xffFACC1D),
        shadow: const Color(0xffFACC1D),
        onBackground: const Color(0xff141A2E)),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff141A2E),
      selectedIconTheme: IconThemeData(
        color: const Color(0xffFACC1D),
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 27,
      ),
      selectedItemColor: const Color(0xffFACC1D),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xff141A2E).withOpacity(0.7),
    ),
    dividerColor: const Color(0xffFACC1D),
  );
}
