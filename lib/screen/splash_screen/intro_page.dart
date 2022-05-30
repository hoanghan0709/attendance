// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:midesk/accessories/style/themes.dart' as Style;
import 'package:midesk/respository/user_repository.dart';
import 'package:midesk/screen/assistant/login_screen.dart';

class IntroPage extends StatefulWidget {
  final UserRepository userRepository;
  IntroPage({Key? key, required this.userRepository}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _IntroPageState createState() => _IntroPageState(userRepository);
}

class _IntroPageState extends State<IntroPage> {
  final UserRepository userRepository;
  _IntroPageState(this.userRepository);
  bool? clicked = false;
  void afterIntroComplete() {
    setState(() {
      clicked = true;
    });
  }

  List<PageViewModel> pages = [
    PageViewModel(
      titleWidget: Column(
        children: <Widget>[
          const Text(
            'MiDesk',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 3,
            width: 100,
            decoration: BoxDecoration(
                color: Style.Colors.mainColor,
                borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
      body:
          "MiDesk - Manage customer requests from multiple channels seamlessly, ensuring consistency, continuity and synchronization.",
      image:
          Center(child: Image.asset("assets/images/midesk_logo_support.png")),
      decoration: const PageDecoration(
          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
          //descriptionPadding: EdgeInsets.only(left: 20, right: 20),
          imagePadding: EdgeInsets.all(20)),
    ),
    PageViewModel(
      titleWidget: Column(
        children: <Widget>[
          const Text(
            'Omni-channel',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 3,
            width: 100,
            decoration: BoxDecoration(
                color: Style.Colors.mainColor,
                borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
      body: "Omni-channel connects all channels into one system."
          "\n Optimize support work, customer equipment on a single system.",
      image: Center(
          child: SizedBox(
        width: 450.0,
        child: Image.asset("assets/images/dakenh_midesk omnichannel.png"),
      )),
      decoration: const PageDecoration(
          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
          // descriptionPadding: EdgeInsets.only(left: 20, right: 20),
          imagePadding: EdgeInsets.all(20)),
    ),
    PageViewModel(
      titleWidget: Column(
        children: <Widget>[
          const Text(
            'Multi-channel',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 3,
            width: 100,
            decoration: BoxDecoration(
                color: Style.Colors.mainColor,
                borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
      body: "Multi-channel Muti-channel lacks unity due to disjointed channels."
          "\n The steps of customer support and care must use each channel, each platform.",
      image: Center(
          child: SizedBox(
        width: 250.0,
        child: Image.asset("assets/images/multichannel.png"),
      )),
      decoration: const PageDecoration(
          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
          //descriptionPadding: EdgeInsets.only(left: 20, right: 20),
          imagePadding: EdgeInsets.all(20)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    if (clicked == true) {
      return LoginScreen(
        userRepository: userRepository,
      );
    } else {
      return IntroductionScreen(
        pages: pages,
        onDone: () {
          afterIntroComplete();
        },
        onSkip: () {
          afterIntroComplete();
        },
        showSkipButton: true,
        skip: const Text('Skip',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),
        next: const Icon(Icons.navigate_next),
        done: const Text("DONE", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(7.0),
            activeSize: const Size(20.0, 5.0),
            activeColor: Style.Colors.mainColor,
            color: Colors.black12,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0))),
      );
    }
  }
}
