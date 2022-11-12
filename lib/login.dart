import 'dart:ui';

import 'package:chatbot_dialogflow/signup.dart';
import 'package:flutter/material.dart';
import 'chatbot.dart';
import 'color.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [A, B],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            /// Login & Welcome back
            Container(
              height: 210,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  /// LOGIN TEXT
                  Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sono',
                        color: Colors.white,
                        fontSize: 36),
                  ),
                  SizedBox(height: 7.5),

                  /// WELCOME
                  Text('Welcome Back',
                      style: TextStyle(
                          fontFamily: 'Sono',
                          color: Colors.white,
                          fontSize: 20)),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    const SizedBox(height: 60),

                    /// Text Fields
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 20,
                                spreadRadius: 10,
                                offset: const Offset(0, 10)),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          /// EMAIL
                          TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: 'Email',
                                isCollapsed: false,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sono',
                                    fontSize: 14,
                                    color: Colors.grey)),
                          ),
                          Divider(color: A, height: 2),

                          /// PASSWORD
                          TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: 'Password',
                                isCollapsed: false,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sono',
                                    fontSize: 14,
                                    color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),

                    /// LOGIN BUTTON
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatbotScreen(),
                            )
                        );
                      },
                      height: 45,
                      minWidth: 240,
                      child: const Text(
                        'LOGIN',
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
                    const SizedBox(height: 25),

                    /// TEXT
                    GestureDetector(
                      child: Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.grey,

                          fontFamily: 'Sono',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),

                      ),
                      onTap: () {
                        // Write Tap Code Here.
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            )
                        );
                      },
                    ),

                    const SizedBox(height: 25),

                    /// Rich Text & Toast
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
