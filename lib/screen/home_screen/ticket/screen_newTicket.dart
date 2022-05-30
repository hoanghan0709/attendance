import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                BackButton(onPressed: () {
                  Navigator.maybePop(context);
                }),
                const Text(
                  'Phiếu mới',
                  style: TextStyle(fontSize: 20.0),
                ),
                Expanded(
                  child: IconButton(
                      padding: const EdgeInsets.only(right: 15.0),
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Color(0xFF847E7E),
                      )),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: TextFormField(
              controller: textPro,
              decoration: InputDecoration(hintText: 'Tiêu đề'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0),
            child: Row(children: [
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    dialog(context);
                  },
                  child: Container(
                    child: Row(children: const [
                      Icon(
                        Icons.add_circle,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text('Người yêu cầu')
                    ]),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('CHỈ ĐỊNH'))),
              SizedBox(
                width: 15.0,
              )
            ]),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            thickness: 1.0,
          ),
          buildPriority(context),
          buildStatus(context)
        ],
      ),
    );
  }

  Widget buildStatus(BuildContext tc) {
    return InkWell(
      onTap: () {
        dialogPriority(tc);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Row(children: [
          Expanded(flex: 14, child: Text('Status')),
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Mới'),
                ),
              )),
        ]),
      ),
    );
  }

  Widget buildPriority(BuildContext tc) {
    return InkWell(
      onTap: () {
        dialogPriority(tc);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Row(children: [
          Expanded(flex: 5, child: Text('Priority')),
          Expanded(
              flex: 2,
              child: TextField(
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: '-',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
                controller: textPro,
                readOnly: true,
              ))
        ]),
      ),
    );
  }

  dialogPriority(BuildContext tc) {
    return showDialog(
        context: tc,
        builder: (tc) {
          return AlertDialog(
            title: Text("Priority"),
            content: _builAlert(tc),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      textPro = TextEditingController(text: 'abs');
                    });
                    Navigator.pop(tc);
                  },
                  child: Text('HỦY BỎ'))
            ],
          );
        });
  }

  _builAlert(BuildContext context) {
    bool groupvalue = false;
    final bool value;
    return Flex(
      direction: Axis.horizontal,
      children: const [
        Radio(value: null, groupValue: null, onChanged: null),
        Radio(value: null, groupValue: null, onChanged: null),
      ],
    );
  }

  dialog(BuildContext tc) {
    return showDialog(
        context: tc,
        builder: (tc) {
          return AlertDialog(
            title: Text("My title"),
            content: Text("This is my message."),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(tc);
                  },
                  child: Text('Ok'))
            ],
          );
        });
  }
}
