import 'package:flutter/material.dart';
import 'colors.dart';

abstract class AppTheme {
  static final ValueNotifier<ThemeMode> modo =
      ValueNotifier(ThemeMode.light);

  static ThemeData temaClaro = ThemeData(
    useMaterial3: true,

    brightness: Brightness.light,

    scaffoldBackgroundColor:
        const Color(0xFFE3F2FD),

    colorScheme: const ColorScheme.light(
      primary: Color(0xFF1976D2),
      secondary: Color(0xFF42A5F5),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1976D2),
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
    ),

    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF1976D2),
      foregroundColor: Colors.white,
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    inputDecorationTheme:
        InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,

      enabledBorder:
          OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFF90CAF9),
        ),
        borderRadius:
            BorderRadius.circular(15),
      ),

      focusedBorder:
          OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFF1976D2),
          width: 2,
        ),
        borderRadius:
            BorderRadius.circular(15),
      ),
    ),

    elevatedButtonTheme:
        ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color(0xFF1976D2),

        foregroundColor:
            Colors.white,

        shape:
            RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(15),
        ),
      ),
    ),
  );


  static ThemeData temaEscuro = ThemeData(
    useMaterial3: true,

    brightness: Brightness.dark,

    scaffoldBackgroundColor:
        const Color(0xFF0D47A1),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF42A5F5),
      secondary: Color(0xFF90CAF9),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1565C0),
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
    ),

    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF42A5F5),
      foregroundColor: Colors.white,
    ),

    cardTheme: CardThemeData(
      color: Color(0xFF1565C0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    inputDecorationTheme:
        InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF1976D2),

      enabledBorder:
          OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFF64B5F6),
        ),
        borderRadius:
            BorderRadius.circular(15),
      ),

      focusedBorder:
          OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,
          width: 2,
        ),
        borderRadius:
            BorderRadius.circular(15),
      ),

      labelStyle: const TextStyle(
        color: Colors.white,
      ),

      hintStyle: const TextStyle(
        color: Colors.white70,
      ),
    ),

    elevatedButtonTheme:
        ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color(0xFF42A5F5),

        foregroundColor:
            Colors.white,

        shape:
            RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(15),
        ),
      ),
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}