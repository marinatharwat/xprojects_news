import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xprojects_news/core/data/model/app/app_settings.dart';
import 'package:xprojects_news/core/data/model/app/preference.dart';
import 'package:xprojects_news/core/di/injector_provider.dart';
class SettingsProvider extends ChangeNotifier {
  final Preference _preference = inject<Preference>();

  ValueNotifier<AppSettings> get appSettings => inject<ValueNotifier<AppSettings>>();

  SettingsProvider() {
    _initApp();
  }

  Future _initApp() async {
    _preference.locale.addListener(() {
      notifyListeners();
    });
  }


  void changeLocale(BuildContext context, String newLocale) {
    _preference.saveLocale(newLocale);
    context.setLocale(Locale(newLocale));
    notifyListeners();
  }

}