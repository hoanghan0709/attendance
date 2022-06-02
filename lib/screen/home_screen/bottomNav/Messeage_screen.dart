import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  Color colors = const Color.fromARGB(255, 223, 221, 221);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                    left: 10.0, bottom: 10.0, top: 10.0, right: 15.0),
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Messenger',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ToggleSwitch(
                        minHeight: 40.0,
                        minWidth: 55.0,
                        cornerRadius: 20.0,
                        activeBgColors: [
                          [Colors.amber[800]!],
                          [Colors.green[800]!],
                          [Colors.red[800]!]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 1,
                        iconSize: 25.0,
                        totalSwitches: 3,
                        icons: const [
                          FontAwesomeIcons.facebook,
                          FontAwesomeIcons.venus,
                          FontAwesomeIcons.transgender
                        ],
                        radiusStyle: true,
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 60.0,
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'Search',
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 12.0, 0, 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: colors,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: colors,
                          width: 2.0,
                        ),
                      ),
                      fillColor: colors,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.black87,
                      )),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildBody(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[200],
          child: ListTile(
            trailing: Text(
              'Ngày/Giờ',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            leading: Stack(children: [
              CircleAvatar(
                backgroundColor: index % 2 == 0 ? Colors.red : Colors.blue,
                child: Text('A'),
              )
            ]),
            title: Text('username'),
            subtitle: Text('message'),
          ),
        );
      },
      itemCount: 14,
    );
  }
}
