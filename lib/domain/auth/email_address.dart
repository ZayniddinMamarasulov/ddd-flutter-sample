class EmailAddress {
  final String value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value) : assert(value != null);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EmailAddress && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'EmailAddress($value)';
}

String validateEmailAddress(String input) {
  return input;
}

class InvalidEmailException implements Exception {}
