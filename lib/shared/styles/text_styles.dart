import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/shared/styles/colors.dart';

class AppTextStyle {
  static final TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 10.0,
    fontWeight: FontWeight.normal,
    color: MyColors.darkColor,
  );
  static final TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: MyColors.darkColor,
  );
  static final TextStyle bodyLarage = GoogleFonts.poppins(
    fontSize: 18.0,
    color: MyColors.darkColor,
  );
  static final TextStyle headLineMeduim = GoogleFonts.poppins(
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
    color: MyColors.whiteColor,
  );
  static final TextStyle headLineLarge = GoogleFonts.poppins(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: MyColors.darkColor,
  );
  static final TextStyle labelSmall = GoogleFonts.poppins(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: MyColors.darkColor,
  );
}
