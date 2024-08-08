import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5c11d4);

const List<Color> _colorsThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorsThemes.length - 1,
            '_ColorsThemes must be between 0 and ${_colorsThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsThemes[selectedColor],
      // brightness: Brightness.dark
    );
  }
}
