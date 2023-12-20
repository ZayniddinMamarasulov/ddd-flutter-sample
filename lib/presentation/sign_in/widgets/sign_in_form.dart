import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleflutter/application/auth/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView(
          children: [
            const Text(
              '📔',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 130),
            )
          ],
        );
      },
    );
  }
}
