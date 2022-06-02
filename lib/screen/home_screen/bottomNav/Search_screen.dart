import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:midesk/model/home/ticket/ticket.dart';
import '../widget_item/item_ticket.dart';
import 'Setting_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Ticket> tickets = [
    Ticket(
        id: 1,
        ticket_id: 3,
        title: 'lịch sử',
        priority: 1,
        status: 'mở',
        category: null,
        assign_agent: null,
        assign_team: null,
        requester: null,
        groupid: null,
        createby: null,
        channel: null,
        requester_type: null,
        datecreate: null,
        is_delete: null,
        is_delete_date: null,
        is_delete_creby: null,
        getTicketsDetail: null),
    Ticket(
        id: 2,
        ticket_id: 3,
        title: 'nội dung',
        priority: 4,
        status: 'đóng',
        category: null,
        assign_agent: null,
        assign_team: null,
        requester: null,
        groupid: null,
        createby: null,
        channel: null,
        requester_type: null,
        datecreate: null,
        is_delete: null,
        is_delete_date: null,
        is_delete_creby: null,
        getTicketsDetail: null),
    Ticket(
        id: 1,
        ticket_id: 3,
        title: 'title',
        priority: 1,
        status: 'status',
        category: null,
        assign_agent: null,
        assign_team: null,
        requester: null,
        groupid: null,
        createby: null,
        channel: null,
        requester_type: null,
        datecreate: null,
        is_delete: null,
        is_delete_date: null,
        is_delete_creby: null,
        getTicketsDetail: null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Text(
                'Search',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 60.0,
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
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
            const Divider(
              thickness: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => ItemTicket(
                    id: '${tickets[index].id}',
                    status: '${tickets[index].status}',
                    sdt: '${tickets[index].channel}',
                    dateTime: '${tickets[index].datecreate}',
                    description: '${tickets[index].id}',
                    title: '${tickets[index].title}'),
                itemCount: tickets.length,
              ),
            )
          ]),
        ),
      ),
    );
  }

  Color colors = const Color.fromARGB(255, 223, 221, 221);
}
