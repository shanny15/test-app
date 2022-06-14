import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
//import 'package:sharon_app/splash_page.dart';

import 'cart_page.dart';

class QRGenerator extends StatefulWidget {
  const QRGenerator({Key? key}) : super(key: key);

  @override
  _QRGeneratorState createState() => _QRGeneratorState();
}

class _QRGeneratorState extends State<QRGenerator> {
   late String qrData;

   void initState(){
     qrData='data';
     super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 100,right: 100),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.transparent,
              onPressed: () {
                setState(() {
                  qrData =randomAlphaNumeric(10) as String;
                });
              },
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.lightBlue]),
                    borderRadius: BorderRadius.circular(6.0),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF6078ea).withOpacity(.3),
                          offset: const Offset(0.0, 8.0),
                          blurRadius: 8.0)
                    ]),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "GENERATE QR",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            qrData == null
                ? const Image(
              image: AssetImage('assets/security.png'),
              height: 320,
              width: 320,
            )
                : getQR(qrData),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => CartPage()));
        },
        label: const Text(
          "DONE",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }

  Widget getQR(String data){
    return  QrImage(
      data: data,
      version: QrVersions.auto,
      size: 320,
      gapless: false,
    );
  }

  int randomAlphaNumeric(int ) {
    return 10;
  }

  CartPage() {}
}
// TODO Implement this library.