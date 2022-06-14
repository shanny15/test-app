import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      radius: 50.0,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.yellow,
                        size: 60.0,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Text("Smart Cart",
                      style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.deepPurpleAccent
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()),
          );
        },
        child: const Icon(
          Icons.navigate_next,
          color: Colors.blue,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
