
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xprojects_news/core/providers/settings_provider.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color black = Color(0xFF101213);
  static const Color blue = Color(0xFF1679BC);
  static const Color red = Color(0xFFDE535C);
  static const Color green = Color(0xFF2B9464);
  static const Color gray = Color(0xFFCED4DA);
  static const Color backgroundLight = Color(0xFFF8F9FA);
  static const Color backgroundDark = Color(0xFF181415);
  static const Color primary = Color(0xff0B7EBA);
  static const Color grayLight = Color(0xFF7A7A7A);
  static const Color light = Color(0xFFF4F4F4);
  static const Color searchColor = Color(0xFF141E28);


  static Color scaffoldBackground(BuildContext context) {
    final isDark = Provider.of<SettingsProvider>(context, listen: false).appSettings.value.isDark;
    return isDark ? backgroundDark : backgroundLight;
  }

  static Color textColor(BuildContext context) {
    final isDark = Provider.of<SettingsProvider>(context, listen: false).appSettings.value.isDark;
    return isDark ? white : black;
  }

  static Color accentColor(BuildContext context) => primary;
}
