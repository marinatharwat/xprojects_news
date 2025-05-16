import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

class DioHelper {
  final Dio dio;

  static final CacheOptions cacheOptions = CacheOptions(
    store: MemCacheStore(),
    hitCacheOnErrorExcept: [],
    allowPostMethod: true,
  );

  DioHelper({required this.dio});

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    bool? forceCache,
    bool? cacheOneDay,
  }) async {
    return await dio.get(
      url,
      queryParameters: query,
      options: (forceCache == true)
          ? cacheOptions
          .copyWith(
        policy: CachePolicy.refreshForceCache,
        maxStale: (cacheOneDay == true)
            ? const Nullable(Duration(days: 1))
            : const Nullable(Duration(days: 7)),
      )
          .toOptions()
          .copyWith(
        headers: dio.options.headers
          ..addAll(headers ?? <String, dynamic>{}),
      )
          : Options(
        headers: dio.options.headers
          ..addAll(headers ?? <String, dynamic>{}),
      ),
    );
  }
}