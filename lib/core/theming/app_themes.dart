import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.mainColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primaryDarkColor,
  scaffoldBackgroundColor: AppColors.primaryDarkColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
);
