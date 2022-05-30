import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_event.dart';
import 'package:midesk/bloc/auth_bloc/auth_state.dart';
import 'package:midesk/core/observe.dart';
import 'package:midesk/respository/user_repository.dart';
import 'package:midesk/screen/home_screen/home_screen.dart';
import 'package:midesk/accessories/style/themes.dart' as Style;
import 'package:midesk/screen/splash_screen/intro_page.dart';

import 'bloc/ticket_bloc/ticket_bloc.dart';

void main() {
  // BlocSupervisor.delegate = SimpleBlocDelegate();
  debugPaintSizeEnabled = false;
  final userRepository = UserRepository();
  BlocOverrides.runZoned(
      () => runApp(
            BlocProvider<AuthenticationBloc>(
              create: (context) {
                return AuthenticationBloc(userRepository: userRepository)
                  ..add(AppStarted());
              },
              child: MyApp(userRepository: userRepository),
            ),
          ),
      blocObserver: MyBlocObserver());
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  MyApp({Key? key, required this.userRepository}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TicketBloc>(
          create: (context) => TicketBloc(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: const Locale('mn', 'MN'),
        theme: ThemeData(
          fontFamily: 'Rubik',
          primarySwatch: Colors.blueGrey,
        ),
        home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state is AuthenticationAuthenticated) {
              return HomeScreen();
            }
            if (state is AuthenticationUnauthenticated) {
              return IntroPage(userRepository: userRepository);
            }
            if (state is AuthenticationLoading) {
              return Scaffold(
                body: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(
                        height: 25.0,
                        width: 25.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Style.Colors.mainColor),
                          strokeWidth: 4.0,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
            return Scaffold(
              body: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(
                      height: 25.0,
                      width: 25.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Style.Colors.mainColor),
                        strokeWidth: 4.0,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
