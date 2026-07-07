import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF5EB6F5);

  // =========================
  // TEMA CLARO
  // =========================

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    primaryColor: primaryColor,

    scaffoldBackgroundColor: const Color(0xFFF4F5FA),

    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    ).copyWith(
      primary: primaryColor,
      surface: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black87,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Color(0xFF5EB6F5),
      ),
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        color: Colors.black54,
      ),
    ),

    iconTheme: const IconThemeData(
      color: Color(0xFF5EB6F5),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
    ),
  );

  // =========================
  // TEMA ESCURO
  // =========================

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    primaryColor: primaryColor,

    scaffoldBackgroundColor: const Color(0xFF222B3F),

    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
    ).copyWith(
      primary: primaryColor,
      surface: const Color(0xFF2B3650),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF2B3650),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Color(0xFF5EB6F5),
      ),
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xFF2B3650),
    ),

    cardTheme: CardThemeData(
      color: const Color(0xFF2B3650),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        color: Colors.white70,
      ),
    ),

    iconTheme: const IconThemeData(
      color: Color(0xFF5EB6F5),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
    ),
  );
}