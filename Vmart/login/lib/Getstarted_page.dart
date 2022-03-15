import 'package:flutter/material.dart';
import 'home_page.dart';
// import 'splash_page.dart';
import 'dart:async';

import 'login_page.dart';

class GetstartedPage extends StatefulWidget {
  static String tag = 'Getstartedpage';
  @override
  _GetstartedPageState createState() => new _GetstartedPageState();
}

class _GetstartedPageState extends State<GetstartedPage> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Padding(
      
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Color.fromARGB(255, 10, 160, 22),
        child: Text('Get Started',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
      ),
    );
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/GetStarted.png",
                    ),
                    fit: BoxFit.fill),
              ),
              // child: Container(),
            ),
            Positioned(bottom: 10, child: loginButton)
          ],
        ),
      ),
    );
  }
}
