import 'package:flutter/material.dart';

abstract class IColorTheme {
  //PrimaryColors
  Color primary = Colors.transparent;
  Color onPrimary = Colors.transparent;
  Color primaryContainer = Colors.transparent;
  Color onPrimaryContainer = Colors.transparent;

  //SecondaryColors
  Color secondary = Colors.transparent;
  Color onSecondary = Colors.transparent;
  Color secondaryContainer = Colors.transparent;
  Color onSecondaryContainer = Colors.transparent;

  //TertiaryColors
  Color tertiary = Colors.transparent;
  Color onTertiary = Colors.transparent;
  Color tertiaryContainer = Colors.transparent;
  Color onTertiaryContainer = Colors.transparent;

  //ErrorColors
  Color error = Colors.transparent;
  Color onError = Colors.transparent;
  Color errorContainer = Colors.transparent;
  Color onErrorContainer = Colors.transparent;

  //NeutralColors
  Color background = Colors.transparent;
  Color onBackground = Colors.transparent;
  Color surface = Colors.transparent;
  Color onSurface = Colors.transparent;

  //NeutralVarientColors
  Color surfaceVarient = Colors.transparent;
  Color onSurfaceVarient = Colors.transparent;
  Color outline = Colors.transparent;
  Color outlineVariant = Colors.transparent;

  //InverseRolesColors
  Color inverseSurface = Colors.transparent;
  Color inverseOnSurface = Colors.transparent;
  Color inversePrimary = Colors.transparent;

  Color transparent = Colors.transparent;
}
