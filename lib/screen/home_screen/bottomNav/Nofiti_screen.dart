import 'package:flutter/material.dart';
import '../widget_item/item_notification.dart';

class NotifiScreen extends StatefulWidget {
  const NotifiScreen({Key? key}) : super(key: key);
@import url(https://fonts.googleapis.com/css?family=Kdam+Thmor+Pro:regular);
  @override
  State<NotifiScreen> createState() => _NotifiScreenState();
}

class _NotifiScreenState extends State<NotifiScreen> {
// ignore: prefer_typing_uninitialized_variables
  var size, width, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Stack(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Text(
                'Notifications',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              )),
          Row(
            children: [
              const Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'All Notification',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
              const Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'All',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ))),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ),
               
            ],
          ),
          const Divider(
            thickness: 1,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ItemNotifications(
                  title: 'Notification 1',
                  name: 'A',
                  description:
                      'This is notification from Facebook and Skypeeee'),
              ItemNotifications(
                  title: 'Notification 1',
                  name: 'B',
                  description: 'Notification from Zalo'),
              ItemNotifications(
                  title: 'Notification 1',
                  name: 'C',
                  description: 'Notification from Telegram'),
            ],
          )
        ]),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.0, left: 15.0),
              child: Text(
                'Read All',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ))
      ]),
    ));
  }
}
