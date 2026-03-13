import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_info.g.dart';

/// Concrete implementation of [NetworkInfo] that maintains its own state.
/// This prevents "Ref disposed" errors when used in long-lived Interceptors.
class NetworkInfo {
  bool _isConnected = true;

  bool get isConnectedSync => _isConnected;

  void updateConnectionStatus(List<ConnectivityResult> results) {
    _isConnected = !results.contains(ConnectivityResult.none);
  }

  /// Deep verification check (async).
  Future<bool> get isConnected async {
    if (!isConnectedSync) return false;

    try {
      final checker = InternetConnectionChecker.createInstance(
        checkTimeout: const Duration(seconds: 1),
      );
      return await checker.hasConnection;
    } catch (_) {
      return false;
    }
  }
}

/// Provider for the hardware connectivity status.
@riverpod
Stream<List<ConnectivityResult>> connectivity(Ref ref) async* {
  final connectivity = Connectivity();
  yield await connectivity.checkConnectivity();
  yield* connectivity.onConnectivityChanged;
}

/// Provider for [NetworkInfo].
/// It listens to the [connectivityProvider] to keep the [NetworkInfo] state updated.
@riverpod
NetworkInfo networkInfo(Ref ref) {
  final info = NetworkInfo();

  // Listen to connectivity changes to update the synchronous state.
  ref.listen(connectivityProvider, (previous, next) {
    next.whenData(info.updateConnectionStatus);
  }, fireImmediately: true);

  return info;
}
