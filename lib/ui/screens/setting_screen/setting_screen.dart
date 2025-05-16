import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xprojects_news/core/data/model/app/app_settings.dart';
import 'package:xprojects_news/core/data/model/app/preference.dart';
import 'package:xprojects_news/core/providers/settings_provider.dart';
import 'package:xprojects_news/core/res/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        final appSettings = settingsProvider.appSettings.value;

        return Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            title:  Text('settings'.tr()),
          ),
          body: ListView(
            children: [
              ListTile(
                title:  Text('language'.tr()),
                trailing: ValueListenableBuilder<String>(
                  valueListenable: context.read<Preference>().locale,
                  builder: (context, localeValue, _) {
                    return DropdownButton<String>(
                      value: localeValue,
                      items: AppSettings.appLanguages.map((lang) {
                        return DropdownMenuItem(
                          value: lang.value,
                          child: Text(lang.name),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        if (newValue != null) {
                          final settingsProvider = context.read<SettingsProvider>();
                          settingsProvider.changeLocale(context, newValue);
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}