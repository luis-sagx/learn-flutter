import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 133, 4, 67);

const List<Color> _colorOptions = [
  _customColor,
  Colors.deepPurple,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorOptions.length,
            'selectedColor must be between 0 and ${_colorOptions.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorOptions[selectedColor],
    );
  }
}
