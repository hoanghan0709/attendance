import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:midesk/respository/user_repository.dart';
import 'package:midesk/screen/assistant/login_screen.dart';
import 'package:midesk/screen/home_screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../theme/image.dart';
import '../assistant/login_form.dart';

class SplashScreen extends StatefulWidget {
final UserRepository userRepository;
  SplashScreen({Key? key,  required this.userRepository})
      : super(key: key);
  
  @override
  _SplashScreenState createState() => _SplashScreenState(userRepository);
}

class _SplashScreenState extends State<SplashScreen> {
  final UserRepository userRepository;
  _SplashScreenState(this.userRepository);

  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      navigateUser(); //It will redirect  after 3 seconds
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void navigateUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? status = prefs.getString('keytoken');
    if (status != null) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
              )),
              (route) => false);
    } else {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen(userRepository: userRepository )),
            (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: Image.asset(logoscreen,width: MediaQuery.of(context).size.width/2,),
        ),
      ),
    );
  }
}
