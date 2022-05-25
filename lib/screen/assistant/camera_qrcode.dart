import 'package:flutter/material.dart';

class CameraQRCode extends StatefulWidget {

  @override
  State<CameraQRCode> createState() => _CameraQRCodeState();
}

class _CameraQRCodeState extends State<CameraQRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),),
        actions: [
          TextButton(onPressed: () {}, child: const Text("Choose Image"))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30)
                ),
                height: MediaQuery.of(context).size.height/2,
              ),
            ),
            const Padding(padding: EdgeInsets.all(40),child: Text("Bring the device close to your QR Code the system will scan the QR and log inautomatically after gettingthe information"),)
          ],
        ),
      ),
    );
  }
}
