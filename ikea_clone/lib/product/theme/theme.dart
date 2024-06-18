import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFfefffe),
      secondary: Color(0xFF25579f),
      surface: Color(0xFFfefffe),
      background: Color(0xFFfefffe),
      error: Color(0xFFC80000),
      onPrimary: Color(0xFFfefffe),
      onSecondary: Color(0xFFfefffe),
      onSurface: Color(0xFF0e1111),
      onBackground: Color(0xFF0e1111),
      onError: Color(0xFFfefffe),
      brightness: Brightness.light,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Color(0xFF25579f),
    ),
    scaffoldBackgroundColor: const Color(0xFFfefffe),
  );
}
