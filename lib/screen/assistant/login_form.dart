// ignore_for_file: deprecated_member_use
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midesk/bloc/login_bloc/login_bloc.dart';
import 'package:midesk/bloc/login_bloc/login_event.dart';
import 'package:midesk/bloc/login_bloc/login_state.dart';
import 'package:midesk/respository/user_resp.dart';
import 'package:midesk/screen/assistant/camera_qrcode.dart';
import '../../theme/image.dart';
import 'package:midesk/accessories/style/themes.dart' as Style;
import 'package:flutter/cupertino.dart';
import '../home_screen/home_screen.dart';

class LoginForm extends StatefulWidget {
  final UserRepository userRepository;
  LoginForm({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState(userRepository);
}

class _LoginFormState extends State<LoginForm> {
  final UserRepository userRepository;
  _LoginFormState(this.userRepository);
  bool _value = false;
  bool showpassword = true;
  // ignore: non_constant_identifier_names
  final Urtext = TextEditingController();
  // ignore: non_constant_identifier_names
  final Passkeys = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  // ignore: non_constant_identifier_names
  void NavigatorShow() async {
    if (Urtext.text == '' || Passkeys.text == '') {
      const snackBar = SnackBar(
        content: Text('Please Enter Username & Password!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      try {
        //_buildBody(context);
      } catch (e) {
        print(e.toString());
        const snackBar = SnackBar(
          content: Text('Please Enter Username & Password!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  void LoginSumbit() async {}

  void onSignInClicked() {
    if (_formKey.currentState.validate()) {
      NavigatorShow();
    }
  }

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      // ignore: avoid_print
      print(Urtext.text);
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          username: Urtext.text,
          password: Passkeys.text,
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(listener: (context, state) {
      if (state is LoginFailure) {
        Scaffold.of(context).showSnackBar(
          const SnackBar(
            content: Text("Login failed."),
            backgroundColor: Colors.red,
          ),
        );
      }
    }, child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Scaffold(
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Image.asset(
                      kh1,
                      width: MediaQuery.of(context).size.width / 5,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 20.0, 0, 0),
                    child: Text(
                      "Hello",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 20.0),
                    child: Text(
                      "Welcome Midesk",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextField(
                      controller: Urtext,
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Please enter some text';
                      //   }
                      //   return null;
                      // },
                      decoration: const InputDecoration(
                        //contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 0),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        TextField(
                          controller: Passkeys,
                          obscureText: showpassword,
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter some text';
                          //   }
                          //   return null;
                          // },
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                showpassword = !showpassword;
                              });
                            },
                            child: const Text("Show",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.blue))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                            height: 45,
                            child: state is LoginLoading
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          SizedBox(
                                            height: 25.0,
                                            width: 25.0,
                                            child: CupertinoActivityIndicator(),
                                          )
                                        ],
                                      ))
                                    ],
                                  )
                                : RaisedButton(
                                    color: Style.Colors.mainColor,
                                    disabledColor: Style.Colors.mainColor,
                                    disabledTextColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    onPressed: _onLoginButtonPressed,
                                    child: const Text("LOG IN",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: _value,
                            shape: const CircleBorder(),
                            onChanged: (bool value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          const Text("Remember")
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password"))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child:
                          Center(child: Text("I have an account via QR Code")),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            unnamed,
                            width: 30,
                            height: 30,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CameraQRCode()));
                              },
                              child: const Text("Login by QR Code"))
                        ],
                      )),
                ],
              ),
            )),
        bottomNavigationBar: const SizedBox(
            height: 50, child: Center(child: Text("Powered by MITEK"))),
      );
    }));
  }
}
