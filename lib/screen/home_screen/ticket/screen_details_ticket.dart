import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailTicketScreen extends StatelessWidget {
  const DetailTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: SingleChildScrollView(child: _buildBody(context))),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_backspace_rounded)),
            ),
            Expanded(
              flex: 7,
              child: Text(
                '#ID',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                flex: 1,
                child: IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded))),
            Expanded(
              flex: 1,
              child: IconButton(
                  alignment: Alignment.centerLeft,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icon/send_icon.svg',
                    height: 20.0,
                    width: 20.0,
                  )),
            )
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: const [
              Text(
                'ABC',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '-',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Title',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Customer'), Text('create date')],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Propertices',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            TextButton(
              child: Text(
                'See more',
                style: TextStyle(color: Colors.blue, fontSize: 13),
              ),
              onPressed: () {},
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text('Status'),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Text('open'),
                    ),
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Assignee'), Text('Name')],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Priority'), Text('-')],
              ),
              Container(
                child: Text('Thấp'),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0, top: 20.0, bottom: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 2.0),
                    child: Text('Comment'),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Username'), Text('create data')],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0, bottom: 10.0),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('Detail Content'),
              ),
              Text('Detail HTML'),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(children: [
            CircleAvatar(
              backgroundColor: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Username'), Text('create date')],
              ),
            )
          ]),
        ),
        Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text('Detail Content'),
                ),
                Text('Detail HTML')
              ],
            )),
        Divider(
          thickness: 1,
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Write the answer',
              border: InputBorder.none,
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icon/thunder-icon.svg',
                    width: 17.0,
                    height: 17.0,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
