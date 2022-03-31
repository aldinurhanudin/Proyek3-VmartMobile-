import 'package:flutter/material.dart';
import 'Getstarted_page.dart';
import 'detailproduk_page.dart';
import 'home_page.dart';
// import 'splash_page.dart';
import 'dart:async';

import 'login_page.dart';

class Splash extends StatefulWidget {
  static String tag = 'Splashpage';
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplash();
  }

  startSplash() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 100),
          child: Image.asset(
            "assets/Logo.png",
            alignment: Alignment.center,
            width: 300.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}
