import 'package:sampleflutter/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = "Error occurred";
    return 'Error : $explanation';
  }


}
