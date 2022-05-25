// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_bloc.dart';
import 'package:midesk/bloc/auth_bloc/auth_event.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import '../../bloc/authevent.dart';
import '../assistant/login_form.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        child: Center(
            child: RaisedButton(
          child: const Text('logout'),
          onPressed: () async {
            BlocProvider.of<AuthenticationBloc>(context).add(
              LoggedOut(),
            );
            // Navigator.pushAndRemoveUntil(
            //     context,
            //     MaterialPageRoute(builder: (context) => LoginForm()),
            //     (route) => false);
            // SharedPreferences prefs = await SharedPreferences.getInstance();
            // prefs?.clear();
          },
        )),
      ),
    );
  }
}
