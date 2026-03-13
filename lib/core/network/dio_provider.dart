import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/constants.dart';

part 'dio_provider.g.dart';

/// Creates and configures a [Dio] instance for the PokeAPI.
@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: kBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  // Log interceptor for debugging
  dio.interceptors.add(
    LogInterceptor(responseBody: true, requestBody: true),
  );

  return dio;
}
