import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
          padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          )),
      const Divider(
        thickness: 1,
      ),
      Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Stack(
                          children: [
                            Positioned(
                              child: CircleAvatar(
                                minRadius: 30.0,
                                backgroundColor: Colors.red[500],
                              ),
                            ),
                            Positioned(
                                top: 18.0,
                                left: 45.0,
                                child: SvgPicture.asset(
                                  'assets/icon/customer-item.svg',
                                  height: 22.0,
                                  width: 22.0,
                                )),
                            Positioned(
                              top: 45.0,
                              left: 65.0,
                              child: Container(
                                width: 14.0,
                                height: 14.0,
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        textProfile('First Name', 'Jony'),
                        textProfile('Last Name', 'Dang'),
                        textProfile('Phone Number', '0375019447'),
                        textProfile('Email', 'midesk@gmail.com')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Text(
                        'Edit',
                        style: TextStyle(color: Colors.blue),
                      ),
                      label: const Icon(
                        Icons.arrow_right_alt,
                        color: Colors.blue,
                      )),
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'Ticket Setting'),
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'Notifications '),
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'FeedBack '),
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'Chat to Support'),
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'Preferences Settings'),
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'License'),
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'Regulation and laws'),
                    buildRowSetting(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('a'),
                                );
                              });
                        },
                        title: 'Midesk Support'),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Versions ios 1.1.0',
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }

  GestureDetector buildRowSetting(
      {required String title, required VoidCallback onTap}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 9,
                      child: Text(
                        '$title',
                        style: TextStyle(fontSize: 15.0),
                      )),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      'assets/icon/icon_right_arrow.svg',
                      width: 16.0,
                      height: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textProfile(String char, String value) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('$char : $value'),
        ),
      ],
    );
  }
}
