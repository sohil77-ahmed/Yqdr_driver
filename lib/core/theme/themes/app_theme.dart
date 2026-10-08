import 'package:flutter/material.dart';

abstract class AppTheme {
  static var fontFamily = 'IBM Plex Sans Arabic';

  ThemeData get theme;

  // TextTheme get textTheme;

  ColorScheme get colorScheme;
}
