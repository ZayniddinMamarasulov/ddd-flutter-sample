import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sampleflutter/domain/auth/email_address.dart';
import 'package:sampleflutter/domain/auth/password.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _iAuthFacade;

  SignInFormBloc(super.initialState, this._iAuthFacade);

  @override
  SignInFormState get initial => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPassword: (e) async* {
        yield* _performAction(_iAuthFacade.registerEmailAndPassword);
      },
      signInWithEmailAndPassword: (e) async* {
        yield* _performAction(_iAuthFacade.signInWithEmailAndPassword);
      },
      signInWithGooglePressed: (e) async* {
        yield* _performAction(_iAuthFacade.signInWithEmailAndPassword);
      },
    );
  }

  Stream<SignInFormState> _performAction(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    if (state.emailAddress.isValid() && state.password.isValid()) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);

      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: none(),
    );
  }
}
