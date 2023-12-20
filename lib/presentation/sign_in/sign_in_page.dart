import 'package:flutter/material.dart';
import 'package:sampleflutter/application/auth/sign_in_form_bloc.dart';
import 'package:sampleflutter/infrastructure/auth/firebase_auth_facade.dart';
import 'package:sampleflutter/injection.dart';
import 'package:sampleflutter/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
