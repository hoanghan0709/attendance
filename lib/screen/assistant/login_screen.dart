import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_bloc.dart';
import 'package:midesk/bloc/login_bloc/login_bloc.dart';
import 'package:midesk/respository/user_repository.dart';
import 'package:midesk/screen/assistant/login_form.dart';

class LoginScreen extends StatelessWidget {
  final UserRepository userRepository;

  LoginScreen({Key? key, required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository,
          );
        },
        child: LoginForm(
          // ignore: null_check_always_fails
          userRepository: userRepository,
        ),
      ),
    );
  }
}
