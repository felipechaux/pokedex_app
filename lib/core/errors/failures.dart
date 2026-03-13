import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Represents all possible failure cases in the app.
@freezed
sealed class Failure with _$Failure {
  const factory Failure.network({
    required String message,
    int? statusCode,
  }) = NetworkFailure;

  const factory Failure.notFound({required String message}) = NotFoundFailure;

  const factory Failure.unknown({required String message}) = UnknownFailure;
}
