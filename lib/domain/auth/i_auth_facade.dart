import 'package:dartz/dartz.dart';
import 'package:sampleflutter/domain/auth/auth_failure.dart';
import 'package:sampleflutter/domain/auth/email_address.dart';
import 'package:sampleflutter/domain/auth/password.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
