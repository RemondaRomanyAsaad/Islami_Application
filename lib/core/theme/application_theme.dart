import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xffB7935F),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
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
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)));
}
