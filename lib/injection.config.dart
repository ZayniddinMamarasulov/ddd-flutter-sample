// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form_bloc.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IAuthFacade>(() => _i4.FirebaseAuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
        ));
    gh.factory<_i7.SignInFormBloc>(() => _i7.SignInFormBloc(
          gh<_i7.SignInFormState>(),
          gh<_i3.IAuthFacade>(),
        ));
    return this;
  }
}
