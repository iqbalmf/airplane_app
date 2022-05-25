import 'package:airplane_app/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

FontWeight light = FontWeight.w300;
FontWeight _regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight _bold = FontWeight.w700;
FontWeight _boldest = FontWeight.w900;

double defaultMargin = 24.0;
double defaultRadius = 17.0;

class TextThemeApp {
  static TextStyle headline = GoogleFonts.poppins(
      color: ColorsApp.blackColor, fontWeight: _bold, fontSize: 20);

  static TextStyle regularText = GoogleFonts.poppins(
    color: ColorsApp.blackColor,
    fontSize: 18,
    fontWeight: _regular,
  );

  static TextStyle subtitleText = GoogleFonts.poppins(
    color: ColorsApp.greyColor2,
    fontSize: 18,
    fontWeight: _regular,
  );
}