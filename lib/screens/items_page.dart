import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/payment_page.dart';

class ItemsPage extends StatefulWidget {
  final String cartNo;
  const ItemsPage({Key? key, required this.cartNo}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {

  @override
  Widget build(BuildContext context) {
    var itemRef;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0.0,
        title: const Text(
          'Cart',
          style: TextStyle( fontWeight: FontWeight.bold, color: Colors.yellow,letterSpacing: 1.5),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
        child: FirebaseAnimatedList(
          query:itemRef,
          itemBuilder: (BuildContext context, snapshot,
          Animation<double> animation, int index) {
            return Container(
              padding: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 15.0),
                    blurRadius: 15.0
                  ),
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, -10.0),
                    blurRadius: 10.0,
                  )
                ]
              ),
              child: ListTile(
                title: Text(
                  snapshot.value["item"],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Price :" + snapshot.value["price"]),
                    Text("Quantity :" + snapshot.value["quantity"]),
                    Text("Weight :" + snapshot.value["weight"]),
                  ],
                ),
              ),
            );
        },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentPage()));
          },
        icon: const Icon(
          Icons.payment,
          color: Colors.white,
        ),
        label: const Text(
          "Pay Now",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );

  }

  FirebaseAnimatedList({query, required Container Function(BuildContext context, dynamic snapshot, Animation<double> animation, int index) itemBuilder}) {}
}
