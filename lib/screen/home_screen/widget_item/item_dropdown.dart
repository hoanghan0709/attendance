import 'package:flutter/material.dart';

class Item_DropDown extends StatelessWidget {
  Item_DropDown({Key? key, required this.value}) : super(key: key);
  String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              underline: SizedBox(),
              iconSize: 0.0,
              value: value,
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem(
                  child: Text(
                    'Tất cả phiếu',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  value: value,
                ),
                DropdownMenuItem(
                    child: Text('Phiếu theo tháng '),
                    value: 'Phiếu theo tháng'),
                DropdownMenuItem(
                    child: Text('Phiếu theo năm '), value: 'Phiếu theo năm'),
              ],
              onChanged: (_) {},
            ),
          ),
        ],
      ),
    );
  }
}
