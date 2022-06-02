// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:midesk/screen/home_screen/bottomNav/Customer_screen.dart';
import 'package:midesk/screen/home_screen/bottomNav/Messeage_screen.dart';
import 'package:midesk/screen/home_screen/bottomNav/Nofiti_screen.dart';
import 'package:midesk/screen/home_screen/bottomNav/Search_screen.dart';
import 'package:midesk/screen/home_screen/bottomNav/Setting_screen.dart';
import 'package:midesk/screen/home_screen/bottomNav/Ticket_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final Widget ticket = TicketScreen();
  int bottomSelectedIndex = 0;
  final Widget search = SearchScreen();
  final Widget customer = CustomerScreen();
  final Widget notifi = NotifiScreen();
  final Widget setting = SettingScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: BottomNavigationBar(
            selectedFontSize: 14.0,
            unselectedFontSize: 14.0,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            elevation: 10.0,
            selectedItemColor: Colors.blue,
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Ticket',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: SvgPicture.asset(
                    'assets/icon/ticket-item.svg',
                    width: 25.0,
                    height: 25.0,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                  label: 'Message',
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),

                      child: SvgPicture.asset('assets/icon/chat.svg',
                        width: 25.0, height: 25.0),
                  )),
              BottomNavigationBarItem(
                  label: 'Customer',
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: SvgPicture.asset('assets/icon/customer-item.svg',
                        width: 25.0, height: 25.0),
                  )),
              BottomNavigationBarItem(
                  label: 'Notification',
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: SvgPicture.asset('assets/icon/notification-item.svg',
                        width: 25.0, height: 25.0),
                  )),
              BottomNavigationBarItem(
                  label: 'Setting',
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: SvgPicture.asset('assets/icon/setting-item.svg',
                        width: 25.0, height: 25.0),
                  )),
            ],
            currentIndex: bottomSelectedIndex,
            onTap: (index) {
              setState(() {
                bottomSelectedIndex = index;
                selectedIndex = index;
              });
            }),
      ),
      body: _buildBody(),
    );
  }

  Text _customeText(String txt) {
    return Text(
      txt,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  _buildBody() {
    if (this.selectedIndex == 0) {
      return TicketScreen();
    } else if (this.selectedIndex == 1) {
      return MessageScreen();
    } else if (this.selectedIndex == 2) {
      return CustomerScreen();
    } else if (this.selectedIndex == 3) {
      return NotifiScreen();
    } else if (this.selectedIndex == 4) {
      return SettingScreen();
    } else {
      return TicketScreen();
    }

    // return PageView(
    //   children: [
    //     TicketScreen(),
    //     SearchScreen(),
    //     CustomerScreen(),
    //     NotifiScreen(),
    //     SettingScreen()
    //   ],
    //   onPageChanged: (index) {
    //     setState(() {
    //       bottomSelectedIndex = index;
    //       selectedIndex =index;
    //     });
    //   },
    // );
  }
}
