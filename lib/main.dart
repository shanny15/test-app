import 'package:flutter/material.dart';

import 'authenticate/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Self Checkout",
        debugShowCheckedModeBanner: false,
        home: SignIn()
    );//Place SignUp function here to Observe SignUp Screen.
  }
}