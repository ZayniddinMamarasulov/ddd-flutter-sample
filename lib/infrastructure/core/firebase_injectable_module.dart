import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @singleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @singleton
  get firebaseAuth => FirebaseAuth.instance;
}
