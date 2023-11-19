import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
    brightness: Brightness.light,
    // primaryColor: primaryColor,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      // secondary: secondaryColor,
      surface: secondaryColor,
      background: backgroundColor,
      error: errorColor,
      onPrimary: secondaryColor,
      onSecondary: primaryColor,
      onSurface: primaryColor,
      onBackground: primaryColor,
      onError: secondaryColor,
    ),
  );
  static final dark = ThemeData(
    brightness: Brightness.dark,
    // primaryColor: primaryColor,
    colorScheme: const ColorScheme.dark(
      // primary: primaryColor,
      // secondary: secondaryColor,
      // surface: secondaryColor,
      background: backgroundColor,
      error: errorColor,
      onPrimary: secondaryColor,
      onSecondary: primaryColor,
      onSurface: primaryColor,
      onBackground: primaryColor,
      onError: secondaryColor,
    ),
  );
}
