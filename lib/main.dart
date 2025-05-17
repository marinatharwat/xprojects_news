import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:xprojects_news/core/data/model/app/app_settings.dart';
import 'package:xprojects_news/core/data/model/app/preference.dart';
import 'package:xprojects_news/core/di/injector_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:xprojects_news/core/providers/settings_provider.dart';
import 'package:xprojects_news/ui/screens/search_screen/cubit/search_cubit.dart';

import 'ui/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupInjection();

  final preference = inject<Preference>();
  final savedLocale =
      Locale(preference.locale.value ?? 'en');

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      startLocale: savedLocale,
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final settingsProvider = inject<SettingsProvider>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Preference>(create: (_) => inject<Preference>()),
        ChangeNotifierProvider<SettingsProvider>.value(value: settingsProvider),
        ChangeNotifierProvider<ValueNotifier<AppSettings>>(
          create: (_) => inject<ValueNotifier<AppSettings>>(),
        ),
        BlocProvider<SearchCubit>(create: (_) => SearchCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        home: const MainScreen(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
