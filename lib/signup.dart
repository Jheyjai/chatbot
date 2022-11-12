import 'package:flutter/material.dart';

import 'color.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                    color: new Color(0xffF5591F),
                    gradient: LinearGradient(colors: [A, B],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            alignment: Alignment.center,
                            child:  Image.asset(
                    "assets/tv.png",
                    height: 120,
                    width: 120,
                  ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 20),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontFamily: 'Sono',
                                  color: Colors.white,
                                  fontSize: 20,

                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: B,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: B,
                      ),
                      hintText: "User Name",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Sono',
                          fontSize: 16,
                          color: Colors.grey),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: B,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: B,
                      ),
                      hintText: "Email",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sono',
                            fontSize: 16,
                            color: Colors.grey),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: B,
                    decoration: InputDecoration(
                      focusColor: B,
                      icon: Icon(
                        Icons.vpn_key,
                        color: B,
                      ),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Sono',
                          fontSize: 16,
                          color: Colors.grey),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  height: 45,
                  minWidth: 240,
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sono',
                      fontSize: 14,
                    ),
                  ),
                  textColor: Colors.white,
                  color: B,
                  shape: const StadiumBorder(),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have Already Member?  ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Sono',
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                              color: B,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sono',
                            fontSize: 12,
                          ),
                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}