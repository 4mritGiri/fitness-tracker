import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 15,
        color: backgroundColor,
        fontWeight: FontWeight.w900,
      ),
    ),
    colorScheme: const ColorScheme.light(
      background: Colors.white,
      primary: primaryColor,
      secondary: secondaryColor,
      surface: secondaryColor,
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
    colorScheme: const ColorScheme.dark(
      background: backgroundColor,
      primary: primaryColor,
      // secondary: secondaryColor,
      // surface: secondaryColor,
      error: errorColor,
      onPrimary: secondaryColor,
      onSecondary: primaryColor,
      onSurface: primaryColor,
      onBackground: primaryColor,
      onError: secondaryColor,
    ),
  );
}
