import 'package:flutter/material.dart';
import '../widget_item/item_ticket.dart';
import 'Setting_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              'Search',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
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
                  contentPadding: const EdgeInsets.fromLTRB(20.0, 12.0, 0, 20),
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
            child: ListView(
              children: [
                ItemTicket(
                    id: "1",
                    status: 'new',
                    sdt: '0302323',
                    dateTime: 'DateTime.now()',
                    description: 'description',
                    title: 'title'),
                ItemTicket(
                    id: "1",
                    status: 'new',
                    sdt: '0302323',
                    dateTime: 'DateTime.now()',
                    description: 'description',
                    title: 'title'),
                ItemTicket(
                    id: "1",
                    status: 'new',
                    sdt: '0302323',
                    dateTime: 'DateTime.now()',
                    description: 'description',
                    title: 'title'),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Color colors = const Color.fromARGB(255, 223, 221, 221);
}
