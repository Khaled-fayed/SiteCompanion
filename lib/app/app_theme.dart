import 'package:flutter/material.dart';

class AppTheme {
  static final Color primaryBlue = Color(0xFF2196F3);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: primaryBlue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryBlue,
      foregroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.light(
      primary: primaryBlue,
      secondary: Colors.blueAccent,
    ),
    // Add more theme properties as needed
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      color: primaryBlue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryBlue,
      foregroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.dark(
      primary: primaryBlue,
      secondary: Colors.blueAccent,
    ),
    // Add more theme properties as needed
  );
}
