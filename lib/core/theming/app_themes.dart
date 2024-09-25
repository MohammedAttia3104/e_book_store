import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.mainColor,
  scaffoldBackgroundColor: AppColors.whiteColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.whiteColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.blackColor,
    ),
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.whiteColor,
  scaffoldBackgroundColor: AppColors.blackColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.blackColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.whiteColor,
    ),
  ),
);
