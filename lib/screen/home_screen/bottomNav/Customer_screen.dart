import 'package:flutter/material.dart';
import '../widget_item/item_custome.dart';
import '../widget_item/item_ticket.dart';
import 'Setting_screen.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              'Customer',
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
                  hintText: 'Seach',
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
          Divider(
            thickness: 1,
          ),
          ItemCustomer(
            title: 'DEC',
            name: 'D',
            description: 'Khách hàng Nguyễn Văn Sinh , AABBCCĐDEEFF ',
          ),
          ItemCustomer(
            title: 'SAQ',
            name: 'S',
            description: 'Khách hàng Đinh Công Minh Thạnh',
          ),
          ItemCustomer(
            title: 'VTT',
            name: 'V',
            description: 'Khách hàng Trần Thị Thanh Vy',
          )
        ]),
      ),
    );
  }

  Color colors = const Color.fromARGB(255, 223, 221, 221);
}
