
import 'dart:async';

import 'package:flutter/material.dart';

import 'color.dart';
import 'login.dart';

void main() {
  runApp(WelcomeScreen());
}

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: cornflower,
                gradient: LinearGradient(colors: [A, B],
                  begin: const FractionalOffset(0, 0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/tv.png"),
              height: 200,

            ),
            
          )
        ],
      ),
    );
  }
}