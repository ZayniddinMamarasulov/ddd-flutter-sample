part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory SignInFormEvent.passwordChanged(String emailStr) =
      PasswordChanged;

  const factory SignInFormEvent.registerWithEmailAndPassword(String emailStr) =
      RegisterWithEmailAndPassword;

  const factory SignInFormEvent.signInWithEmailAndPassword(String emailStr) =
      SignInWithEmailAndPassword;

  const factory SignInFormEvent.signInWithGooglePressed(String emailStr) =
      SignInWithGooglePressed;
}
