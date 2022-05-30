import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:midesk/bloc/auth_bloc/auth_event.dart';
import 'package:midesk/bloc/auth_bloc/auth_state.dart';
import 'package:midesk/respository/user_repository.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({ required this.userRepository})
      : super(AuthenticationUninitialized()) {
    on<AppStarted>(appStarted);
    on<LoggedIn>(loggedIn);
    on<LoggedOut>(loggedOut);
  }
  void appStarted(AppStarted event, Emitter<AuthenticationState> emit) async {
    final bool hasToken = await userRepository.hasToken();
    if (hasToken) {
      emit(AuthenticationAuthenticated());
    } else {
      emit(AuthenticationUnauthenticated());
    }

  }

  void loggedOut(LoggedOut event, Emitter<AuthenticationState> emit) async {
    if (event is LoggedOut) {
      emit(AuthenticationLoading());
      await userRepository.deleteToken();
      emit(AuthenticationUnauthenticated());
    }
  }

  void loggedIn(LoggedIn event, Emitter<AuthenticationState> emit) async {
    if (event is LoggedIn) {
      emit(AuthenticationLoading());
      await userRepository.persistToken(event.token);
      emit(AuthenticationAuthenticated());
    }
  }
}
 