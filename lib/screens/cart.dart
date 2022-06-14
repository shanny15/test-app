import 'package:flutter/material.dart';

import 'items_page.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  TextEditingController textFieldController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  <Widget>[
          const SizedBox(
            height: 120,
          ),
          const Image(
              image: AssetImage('assets/logo.png'),
             height:150,
          ),
          const SizedBox(height: 30,),
          const Padding(padding: EdgeInsets.all(30.0),
            child: TextField(
              //controller: textFieldController,
              decoration: InputDecoration(
                labelText: "Enter Cart Number",
                //border:
                //OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          RaisedButton(
            elevation: 0.0,
            color: Colors.transparent,
            onPressed: (){
              sendCartNo(context);
            },

            child: Container(
              width: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Colors.deepPurpleAccent],),
                borderRadius: BorderRadiusDirectional.circular(6.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    offset: const Offset(0.0, 8.0),
                    blurRadius:9.0,
                  ),
                ]
              ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:10),
                child: Text(
                  "Next",
                  style:TextStyle(
                    color:Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing:1.5
                  ),
                ),
              ),
            ),
            ),
          ),

        ],
      ),
    );
  }
  sendCartNo(BuildContext context){
    String toSend = textFieldController.text;
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=>ItemsPage(cartNo:toSend,))
    );
  }
}
