import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData appTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 46, 192, 192),
    primaryColorLight: const Color.fromARGB(255, 46, 192, 192),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: const MaterialColor(
        0xFF2EC0C0, // Replace with your desired primary color value
        <int, Color>{
          50: Color(0xFFE1F5E1),
          100: Color(0xFFB4E6B4),
          200: Color(0xFF83D683),
          300: Color(0xFF51C751),
          400: Color(0xFF2BAD2B),
          500: Color(0xFF00FF00), // Primary color
          600: Color(0xFF00E600),
          700: Color(0xFF00CC00),
          800: Color(0xFF00B200),
          900: Color(0xFF009900),
        },
      ),
      backgroundColor: Colors.white,
      accentColor: const Color.fromARGB(255, 46, 192, 192),
      // You can configure more colors here as needed.
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
    ),
  );
}
