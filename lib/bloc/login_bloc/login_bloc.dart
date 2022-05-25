import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_event.dart';
import 'package:midesk/bloc/login_bloc/login_event.dart';
import 'package:midesk/bloc/login_bloc/login_state.dart';
import 'package:midesk/respository/user_resp.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      try {
        final token = await userRepository.login(
          event.username,
          event.password,
        );
        print("token " + token);
        authenticationBloc.add(LoggedIn(token: token));
        yield LoginInitial();
      } catch (error) {
        print("LoginFailureToken " + error.toString());
        yield LoginFailure(error: error.toString());
      }
    }
  }
}