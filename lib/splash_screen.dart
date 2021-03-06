import 'package:flutter/material.dart';
import './home.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5), //for which the time will be displayed
        () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen() // after 5s will take to homescreen
          )
        )
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Player"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/giphy.gif",
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 100,),
            Text(
              "Developer - Anaaaaanya",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}