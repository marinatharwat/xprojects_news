import 'package:shared_preferences/shared_preferences.dart';
import 'package:xprojects_news/core/constants.dart';

import 'package:xprojects_news/core/data/model/app/app_language.dart';


class AppSettings {
  static List<AppLanguage> appLanguages = [
    AppLanguage(value: TranslationsConstants.localeEN, name: 'English'),
    AppLanguage(value: TranslationsConstants.localeAr, name: 'عربي'),
  ];

  bool isDark;
  String locale;

  AppSettings({
    this.isDark = false,
    this.locale = TranslationsConstants.localeEN,
  });

  factory AppSettings.fromPref(SharedPreferences prefs) {
    return AppSettings(
      isDark: prefs.getBool("isDark") ?? false,
      locale: prefs.getString("locale") ?? TranslationsConstants.localeEN,
    );
  }

  Future<void> saveToPrefs(SharedPreferences prefs) async {
    await prefs.setBool("isDark", isDark);
    await prefs.setString("locale", locale);
  }

  AppSettings copyWith({
    bool? isDark,
    String? locale,
  }) {
    return AppSettings(
      isDark: isDark ?? this.isDark,
      locale: locale ?? this.locale,
    );
  }


  
}
