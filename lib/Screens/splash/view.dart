import 'dart:async';

import 'package:flutter/material.dart';

import '../afterSplash/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => AfterSplashScreen()),
            (route) => true));

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('01.png'),
        fit: BoxFit.fill,
      )),
      child: Center(
        child: Image(
          image: AssetImage('images/Logo.png'),
        ),
      ),
    ));
  }
}
