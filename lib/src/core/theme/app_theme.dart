import 'package:flutter/material.dart';

class AppTheme {
  AppTheme(this._textTheme);

  final TextTheme _textTheme;

  final ColorScheme _lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff8e6cdf),
    onPrimary: Colors.white,
    secondary: Color(0xff8e6cdf),
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.grey,
    onSurface: Colors.black,
  );

  final ColorScheme _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xff8e6cdf),
    onPrimary: Colors.black,
    secondary: Color(0xff8e6cdf),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.black,
    surface: Colors.grey,
    onSurface: Colors.white,
  );

  ThemeData call(ThemeMode mode) {
    final colorScheme = mode == ThemeMode.light ? _lightScheme : _darkScheme;

    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: _textTheme,
      scaffoldBackgroundColor: colorScheme.onPrimary,
    );
  }
}
