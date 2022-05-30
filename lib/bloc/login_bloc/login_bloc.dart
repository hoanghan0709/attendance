import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_event.dart';
import 'package:midesk/bloc/login_bloc/login_event.dart';
import 'package:midesk/bloc/login_bloc/login_state.dart';
import 'package:midesk/respository/user_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
     required this.userRepository,
     required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null),
        super(LoginInitial()) {
    on<LoginButtonPressed>(loginButton);
  }
  void loginButton(LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    try {
      final token = await userRepository.login(
        event.username,
        event.password,
      );
      print("token " + token);
      authenticationBloc.add(LoggedIn(token: token));
      emit(LoginInitial());
    } catch (error) {
      print("LoginFailureToken " + error.toString());
      emit(LoginFailure(error: error.toString()));
    }
  }
 
}
