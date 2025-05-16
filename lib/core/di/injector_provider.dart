import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xprojects_news/core/data/model/app/preference.dart';
import 'package:xprojects_news/core/data/remote/dio_helper.dart';
import 'package:xprojects_news/core/data/remote/remote_data_source.dart';
import 'package:xprojects_news/ui/screens/bookmark_screen/repository/bookmark_repository.dart';
import 'package:xprojects_news/ui/screens/home_screen/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:xprojects_news/ui/screens/search_screen/repository/search_repository.dart';
import '../data/model/app/app_settings.dart';
import '../providers/settings_provider.dart';
final GetIt inject = GetIt.instance;

Future<void> setupInjection() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final directory = await getTemporaryDirectory();

  inject.registerSingleton<SharedPreferences>(sharedPreferences);
  inject.registerSingleton<Directory>(directory);

  inject.registerSingleton<Preference>(
    PreferenceImpl(sharedPreferences: sharedPreferences),
  );

  inject.registerSingleton<ValueNotifier<AppSettings>>(
    ValueNotifier<AppSettings>(AppSettings.fromPref(sharedPreferences)),
  );

  inject.registerSingleton<Dio>(
    Dio(BaseOptions(
      baseUrl: 'https://newsapi.org/v2',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    )),
  );

  inject.registerSingleton<DioHelper>(DioHelper(dio: inject.get<Dio>()));

  inject.registerSingleton<RemoteDataSource>(
    RemoteDataSourceImp(dioHelper: inject.get<DioHelper>()),
  );

  inject.registerSingleton<HomeRepository>(
    HomeRepositoryImp(remoteDataSource: inject.get<RemoteDataSource>()),
  );

  inject.registerSingleton<BookmarkRepository>(
    BookmarkRepositoryImp(remoteDataSource: inject.get<RemoteDataSource>()),
  );

  inject.registerSingleton<SearchRepository>(
    SearchRepositoryImp(remoteDataSource: inject.get<RemoteDataSource>()),
  );


  inject.registerSingleton<SettingsProvider>(
    SettingsProvider(),
  );
}
