import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.lato().fontFamily,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      );

      //Colors
      static Color creamColor = Color(0xfff5f5f5);
      static Color darkBluishColor = Color(0xff403b58);
}