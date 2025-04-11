import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(String fontFamily) {
  final textStyle = GoogleFonts.getFont(fontFamily);
  return TextTheme(
    displayLarge: textStyle.copyWith(fontSize: 20),
    displayMedium: textStyle.copyWith(fontSize: 20),
    displaySmall: textStyle.copyWith(fontSize: 20),

    headlineLarge: textStyle.copyWith(fontSize: 18),
    headlineMedium: textStyle.copyWith(fontSize: 18),
    headlineSmall: textStyle.copyWith(fontSize: 18),

    titleLarge: textStyle.copyWith(fontSize: 16),
    titleMedium: textStyle.copyWith(fontSize: 16),
    titleSmall: textStyle.copyWith(fontSize: 16),

    bodyLarge: textStyle.copyWith(fontSize: 14),
    bodyMedium: textStyle.copyWith(fontSize: 14),
    bodySmall: textStyle.copyWith(fontSize: 14),

    labelLarge: textStyle.copyWith(fontSize: 12),
    labelMedium: textStyle.copyWith(fontSize: 12),
    labelSmall: textStyle.copyWith(fontSize: 12),
  );
}
