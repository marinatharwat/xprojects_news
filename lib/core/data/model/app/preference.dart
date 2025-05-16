import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Preference {
  static const localeKey = 'appLocale';

  late final ValueNotifier<String> locale;

  void saveLocale(String locale);
  String get currentLocale;
}

class PreferenceImpl extends Preference {
  @override
  late final ValueNotifier<String> locale;

  final SharedPreferences sharedPreferences;

  PreferenceImpl({required this.sharedPreferences}) {
    final savedLocale = sharedPreferences.getString(Preference.localeKey) ?? 'en';
    locale = ValueNotifier<String>(savedLocale);
  }

  @override
  void saveLocale(String newLocale) {
    locale.value = newLocale;
    sharedPreferences.setString(Preference.localeKey, newLocale);
  }

  @override
  String get currentLocale => locale.value;
}
