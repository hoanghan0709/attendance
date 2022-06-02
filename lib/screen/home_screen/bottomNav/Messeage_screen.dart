import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    child: SvgPicture.asset('assets/images/null.svg')),
                Text(
                  'Chưa có tin nhắn nào!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
