import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tf_dio_cache/tf_dio_cache.dart';

@lazySingleton
class DioOptions{

  Options call({bool forceRefresh = true}) {
    // forceRefresh=true skips the cache entirely: no cached reads and no
    // stale-cache fallback when the server returns an error (the tf_dio_cache
    // interceptor would otherwise replace errors like 422 with week-old data).
    // Pass refresh: false on the request to enable caching for an endpoint.
    if (forceRefresh) return Options();
    return buildCacheOptions(
      const Duration(hours: 3),
      maxStale: const Duration(days: 7),
      forceRefresh: false,
      options: Options(extra: {}),
    );
  }

}