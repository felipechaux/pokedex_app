import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:pokedex_app/core/network/connectivity_interceptor.dart';
import 'package:pokedex_app/core/network/network_info.dart';
import '../constants/constants.dart';

part 'dio_provider.g.dart';

/// Creates and configures a [Dio] instance for the PokeAPI.
@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: kBaseUrl,
      connectTimeout: const Duration(seconds: 3),
      receiveTimeout: const Duration(seconds: 3),
      sendTimeout: const Duration(seconds: 3),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  final networkInfo = ref.watch(networkInfoProvider);

  dio.interceptors.addAll([
    ConnectivityInterceptor(networkInfo),
    LogInterceptor(responseBody: true, requestBody: true),
  ]);

  return dio;
}
