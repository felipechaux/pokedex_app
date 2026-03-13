/// Base contract for all use cases.
///
/// [T] is the return type; [P] is the parameters type.
/// Use [NoParams] when no parameters are required.
abstract interface class UseCase<T, P> {
  Future<T> call(P params);
}

/// Marker class for use cases that require no parameters.
final class NoParams {
  const NoParams();
}
