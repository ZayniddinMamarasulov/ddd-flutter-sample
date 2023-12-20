import 'package:dartz/dartz.dart';
import 'package:sampleflutter/domain/core/value_validators.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
