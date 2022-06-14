import 'package:flutter/material.dart';

import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();

  void onSignup(String username) {}
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  String _Username='';

  void _signup(){
    if (_formKey.currentState!.validate()){
      widget.onSignup(_Username);
    }
  }


  @override



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8ebed),
      body: SingleChildScrollView(
        //we are adding this so that we can scroll when KeyBoard PopsUp.
        child: Container(
          key: _formKey,

          height: MediaQuery.of(context)
              .size
              .height, // If you get any blur that is outoff the screen then try to decrease or increase this negative value.This is mainly bcz it adjusts as per the phone size.
          alignment: Alignment.topCenter,
          child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    child: Column(
                      children: [
                        Stack(
                          //I added stack so that i can position it anywhere i want with the coordinates like left ,right,bottom.
                          children: <Widget>[
                            Positioned(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  "assets/images/talking.png",
                                ),
                              ),
                            ),
                          ],
                        ),

                        //The Username,Email,Password Input fields.
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe1e2e3),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ]),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: "Username",
                                      border: InputBorder.none),

                                  validator: (text){
                                    if (text==null|| text.isEmpty){
                                      return 'Cannot be empty';
                                    }
                                    if(text.length <4){
                                      return 'too short';
                                    }
                                    return null;
                                  },
                                  onChanged: (text)=>setState(()
                                    =>_Username=text
                                  ),

                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: "Email",
                                      border: InputBorder.none),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      hintText: "Password",
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  //Raised Buttons of sigup will appear.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          elevation: 13,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 55),
                          onPressed: () {


                          },
                          color: Colors.deepPurpleAccent,
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))),
                      const SizedBox(width: 5),
                      InkWell(        //We can use the GestureDetector as well.
                        onTap: () {
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: const BoxDecoration(
                                color: Color(0xfff5f8fd),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  //For creating like a card.
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0.0,
                                          18.0),
                                      blurRadius: 15.0),
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0.0, -04.0),
                                      blurRadius: 10.0),
                                ]),
                            child: Row(
                              children: [
                                const Text(
                                  "Sign Up With",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.w700),
                                ),
                                Image.asset(
                                  "assets/images/google.png",
                                  height: 40,
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("Already have an account?"),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()),
                        );
                      },
                      child: const Text("Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.deepPurpleAccent,
                              fontSize: 18)),
                    )
                  ]),
                ],
              )),
        ),
      ),
    );
  }
}

