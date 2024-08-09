import 'package:flutter/material.dart';

const List<Color> _colorsThemes = [
  Color(0xFF5c11d4), // Custom Purple
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  final Brightness brightness;

  AppTheme({
    this.selectedColor = 0,
    this.brightness = Brightness.light,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorsThemes.length - 1,
            '_ColorsThemes must be between 0 and ${_colorsThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _colorsThemes[selectedColor],
        brightness: brightness,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _colorsThemes[selectedColor],
        foregroundColor: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorsThemes[selectedColor],
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _colorsThemes[selectedColor].withOpacity(0.2),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _colorsThemes[selectedColor],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _colorsThemes[selectedColor],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
