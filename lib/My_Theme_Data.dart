import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyThemeData{
  static const Color blackColor=Color(0xFF242424);
  static const Color primary=Color(0xFFB7935F);
  static ThemeData lightTheme= ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color:blackColor),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          textTheme: TextTheme(
            bodyLarge: GoogleFonts.elMessiri(
              fontWeight: FontWeight.bold,
              color: Color(0xFF242424),
              fontSize: 30,
            ),
            bodySmall: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
              fontSize: 20,
            ),
            bodyMedium: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w700,
              color: Color(0xFF242424),
              fontSize: 25,
            ),
          ),
      bottomNavigationBarTheme:BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primary,
        selectedItemColor: blackColor,
         unselectedItemColor: Colors.white,
      ) );
  static ThemeData darkTheme= ThemeData();
}