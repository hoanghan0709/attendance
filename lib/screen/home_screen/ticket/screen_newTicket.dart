import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:midesk/screen/home_screen/ticket/screen_details_ticket.dart';

class NewTicketScreen extends StatefulWidget {
  const NewTicketScreen({Key? key}) : super(key: key);

  @override
  State<NewTicketScreen> createState() => _NewTicketScreenState();
}

class _NewTicketScreenState extends State<NewTicketScreen> {
  TextEditingController textPro = TextEditingController();

  get onChanged => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar:
                SingleChildScrollView(child: _buildBottom(context)),
            body: Column(children: [
              Container(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          Navigator.maybePop(context);
                        },
                        icon: Icon(Icons.keyboard_backspace_rounded),
                      ),
                    ),
                    const Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Created',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          padding: const EdgeInsets.all(10.0),
                          alignment: Alignment.centerRight,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailTicketScreen()));
                          },
                          icon: SvgPicture.asset(
                            'assets/icon/send_icon.svg',
                            height: 20.0,
                            width: 20.0,
                          )),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Title',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Customer',
                                style: TextStyle(fontSize: 15.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  'create date',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              )
                            ],
                          ),
                        )
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
                                padding: const EdgeInsets.only(
                                    left: 5.0, right: 5.0),
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
                        Text('Priority'),
                        Container(
                          child: Text('Thấp'),
                        )
                      ],
                    ),
                  )
                ],
              )
            ])));
  }

  Widget _buildBottom(BuildContext context) {
    return Container(
      height: 120.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Divider(
            thickness: 1,
          ),
          Expanded(
            flex: 1,
            child: TextFormField(
              maxLines: 100,
              decoration: InputDecoration(
                  hintText: 'Write the answer',
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icon/thunder-icon.svg',
                        width: 17.0,
                        height: 17.0,
                      ))),
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icon/image-icon.svg',
                        width: 22.0,
                        height: 22.0,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icon/camera-icon.svg',
                        width: 22.0,
                        height: 22.0,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icon/file-icon.svg',
                        width: 22.0,
                        height: 22.0,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
