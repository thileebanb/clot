import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(String fontFamily) {
  final textStyle = GoogleFonts.getFont(fontFamily);
  return TextTheme(
    displayLarge: textStyle,
    displayMedium: textStyle,
    displaySmall: textStyle,

    headlineLarge: textStyle,
    headlineMedium: textStyle,
    headlineSmall: textStyle,

    titleLarge: textStyle,
    titleMedium: textStyle,
    titleSmall: textStyle,

    bodyLarge: textStyle,
    bodyMedium: textStyle,
    bodySmall: textStyle,
  );
}
