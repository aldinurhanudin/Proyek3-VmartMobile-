import 'package:flutter/material.dart';
import 'package:login/menu.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    autoDashboard();
  }

  autoDashboard() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? val = pref.getString("login");
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      if (val != null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Menu()), (route) => false);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GetstartedPage()));
      }
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
