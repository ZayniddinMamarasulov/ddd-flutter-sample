import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required String failedValue}) =
      InvalidEmail<T>;

  const factory ValueFailure.shortPassword({required String failedValue}) =
      ShortPassword<T>;
}

abstract class Failure {}

class InvalidEmailFailure implements Failure {
  final String fieldValue;

  InvalidEmailFailure({required this.fieldValue});
}
