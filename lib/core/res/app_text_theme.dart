import 'package:flutter/material.dart';
import 'package:xprojects_news/core/res/colors.dart';

class AppTextTheme {
  static const double _lineHeight = 1.5;

  // Headlines
  static TextStyle get h1 => const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    height: _lineHeight,
  );

  static TextStyle get h2 => const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: _lineHeight,
  );

  static TextStyle get h3 => const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: _lineHeight,
  );

  // Body text

  static TextStyle get bodyNew => const TextStyle(
      fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: _lineHeight,
  );
  static TextStyle get body => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    height: _lineHeight,
  );

  static TextStyle get bodySmall =>const  TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    height: _lineHeight,
  );

  static TextStyle get bodyLarge => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    height: _lineHeight,
  );

  // Buttons
  static TextStyle get button => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    height: _lineHeight,
  );

  static TextStyle get buttonSmall =>const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    height: _lineHeight,
  );

  static TextStyle get buttonLarge => const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    height: _lineHeight,
  );
}
