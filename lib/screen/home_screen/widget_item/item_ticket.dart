import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemTicket extends StatelessWidget {
  ItemTicket(
      {Key? key,
      required this.id,
      required this.sdt,
      required this.dateTime,
      required this.description,
      required this.title,
      required this.status})
      : super(key: key);

  final String dateTime;
  final String id;
  final String title;
  final String description;
  final String sdt;
  final String status;
  @override
  Widget build(BuildContext context) {
    Color colos = Color.fromARGB(255, 167, 167, 167);
    // double c_width = MediaQuery.of(context).size.width * 0.5;

    return Card(
      child: Row(children: [
        const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text('A'),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#$id-$sdt',
                  maxLines: 1,
                  style: TextStyle(color: colos),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  title,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Container(
                  // width: c_width,
                  child: Text(description,
                      maxLines: 2, style: TextStyle(color: colos)),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${formatTime(DateTime.now())}',
                style: TextStyle(color: colos),
              ),
              Container(
                height: 20.0,
                width: 50.0,
                color: Colors.red,
                child: Center(
                    child: Text(
                  status,
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
        )
      ]),
    );
  }

  String formatTime(DateTime? time) {
    if (time != null) {
      String dateString = DateFormat('d/M/y').format(time);
      return dateString;
    }
    return 'n/a';
  }
}
