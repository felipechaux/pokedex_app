import 'package:dio/dio.dart';
import 'package:pokedex_app/core/constants/constants.dart';
import 'package:pokedex_app/core/errors/failures.dart';
import 'package:pokedex_app/core/network/network_info.dart';

/// Interceptor that checks for internet connectivity before sending a request.
/// This ensures the app fails fast when offline without waiting for OS timeouts.
class ConnectivityInterceptor extends Interceptor {
  final NetworkInfo networkInfo;

  ConnectivityInterceptor(this.networkInfo);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Perform a zero-latency synchronous check.
    if (!networkInfo.isConnectedSync) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const Failure.network(message: kNoInternetSimpleError),
          type: DioExceptionType.connectionError,
        ),
      );
    }
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // If we catch a connection error or a DNS fail (host lookup) during the request,
    // we wrap it immediately to fail fast.
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.connectionTimeout ||
        err.message?.contains('SocketException') == true ||
        err.message?.contains('Failed host lookup') == true) {
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const Failure.network(message: kNoInternetError),
          type: DioExceptionType.connectionError,
        ),
      );
    }
    super.onError(err, handler);
  }
}
