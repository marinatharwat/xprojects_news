import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'dio_helper.dart';

Dio dioInit() {
  final dio = Dio();

  dio.options.baseUrl = 'https://newsapi.org/v2';
  dio.options.connectTimeout = const Duration(seconds: 25);
  dio.options.receiveTimeout = const Duration(minutes: 1);

  dio.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    compact: false,
  ));

  dio.interceptors.add(DioCacheInterceptor(options: DioHelper.cacheOptions));

  return dio;
}
