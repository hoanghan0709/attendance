import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext tc) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: const Text(
              'Cài đặt',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Container(
            child: Column(
              children: [
                buildItemSetting(
                    title: 'Cài đặt phiếu',
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemSetting(
                    title: 'Thông Báo',
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemTwoRow(
                    title: 'Hình Nền',
                    subtitle: "Mặc định hệ thống",
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemSetting(
                    title: 'Giấy phép',
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemSetting(
                    title: 'Quy định về quyền riêng tư',
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemTwoRow(
                    title: 'Làm mới dữ liệu',
                    subtitle: 'Đã cập nhật:  ${DateTime.now()}  ',
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemSetting(
                    title: 'Đánh giá chúng tôi',
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemSetting(
                    title: 'Trò chuyện với bộ phận hỗ trợ',
                    onPressed: () {
                      dialog(tc);
                    }),
                buildItemSetting(
                    title: 'Đăng xuất',
                    onPressed: () {
                      dialog(tc);
                    }),
              ],
            ),
          ),
        ],
      ),
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

  Widget buildItemTwoRow(
      {required String title,
      required String subtitle,
      required VoidCallback onPressed}) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: InkWell(
          onTap: onPressed,
          child: Column(children: [
            Row(
              children: [
                Text(
                  title,
                ),
              ],
            ),
            Row(
              children: [
                InkWell(child: Text(subtitle)),
              ],
            ),
            const Divider(
              thickness: 2.0,
            )
          ]),
        ),
      ),
    );
  }

  Widget buildItemSetting(
      {required String title, required VoidCallback onPressed}) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(title),
            ),
          ),
          const Divider(thickness: 2.0)
        ],
      ),
    );
  }
}
