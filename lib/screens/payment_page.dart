import 'package:flutter/material.dart';
import 'package:mobile_app/screens/qr_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'Payment Options',
          style: TextStyle( fontWeight: FontWeight.bold, color: Colors.amberAccent),
        ),
      ),
      body: Container(
        padding:const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children:  <Widget>[
            Card(
              margin:const EdgeInsets.all(15),
              elevation: 10,
              child: Row(
                children: const <Widget>[
                  Padding(padding:EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('assets/visa.png'),
                    height: 75,
                    width: 75,
                  ),
                  ),
                  SizedBox(width: 50,),
                  Text(
                    "Visa",
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),
                  ),

                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(5),
              elevation: 10,
              child: Row(
                children: const <Widget>[
                  Padding(padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/mastercard.png'),
                      height: 75,
                      width: 75,
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Mastercard",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),
                  ),

                ],
              ),
            ),
            Card(
              margin:const EdgeInsets.all(5),
              elevation: 10,
              child: Row(
                children: const <Widget>[
                  Padding(padding:EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/paypal.png'),
                      height: 75,
                      width: 75,
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Paypal",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const QRGenerator() ));
          },
        label: const Text(
          "Next",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
