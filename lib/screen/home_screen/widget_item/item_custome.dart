import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemCustomer extends StatelessWidget {
  String name;
  String description;
  String title;
  ItemCustomer({
    Key? key,
    required this.name,
    required this.description,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text(name)),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    const  SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        description,
                        style: TextStyle(color: Colors.grey),
                        maxLines: 2,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text('${formatTime(DateTime.now())}',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              )
            ],
          )
        ]),
      ),
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
