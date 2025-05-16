import 'package:flutter/material.dart';
class AppDimension {
  // Border Radius
  static const double radius = 10.0;
  static const double radius8 = 8.0;
  static const double radius16 = 16.0;

  // Padding
  static const double padding4 = 4.0;
  static const double padding8 = 8.0;
  static const double padding10 = 10.0;
  static const double padding16 = 16.0;
  static const double padding24 = 24.0;

  // Icon & Button sizes
  static const double iconSize = 24.0;
  static const double buttonHeight = 40.0;

  // Spacing
  static const double spacing8 = 8.0;
  static const double spacing16 = 16.0;

  // Responsive height for sections
  static double sectionItemHeight(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.24;
}