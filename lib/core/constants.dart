
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class Constants {
  static const String baseAPI = 'https://newsapi.org/v2';

  static const int paginationInitialPage = 1;
  static const int resultLimitCount = 50;

  static const int unAuthorizedStatusCode = 401;
  static const int forbiddenStatusCode = 403;

  static final RegExp urlPattern = RegExp(
    r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+',
  );
}
class TranslationsConstants {
  static const String localeEN = 'en';
  static const String localeAr = 'ar';

  static bool isEnglish(BuildContext context) =>
      (context.locale.languageCode == TranslationsConstants.localeEN);

  static bool isLTR(BuildContext context) =>
      (context.locale.languageCode == TranslationsConstants.localeEN);

}
