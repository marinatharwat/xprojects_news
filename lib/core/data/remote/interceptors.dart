import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:xprojects_news/core/data/model/app/preference.dart';
import 'package:xprojects_news/core/constants.dart';


class DioInterceptors {
  late final Preference _preference;
  late final QueuedInterceptorsWrapper authInterceptor;

  DioInterceptors({Preference? preference}) {
    _preference = preference ?? GetIt.instance.get<Preference>();
    setInterceptor();
  }

  void setInterceptor() {
    authInterceptor = QueuedInterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers['Accept'] = 'application/json';
        options.headers['Lang'] = _preference.locale.value ?? TranslationsConstants.localeEN;
        return handler.next(options);
      },
      onResponse: (response, handler) => handler.next(response),
      onError: (e, handler) => handler.next(e),
    );
  }
}