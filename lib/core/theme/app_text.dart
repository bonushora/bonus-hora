import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  AppText._();

  static TextTheme get textTheme => TextTheme(
    displayLarge: GoogleFonts.inter(fontSize: 36, fontWeight: FontWeight.w700),
    headlineLarge: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
    bodyLarge: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
    bodyMedium: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
  );
}
