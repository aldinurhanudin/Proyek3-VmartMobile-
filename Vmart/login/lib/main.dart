import 'package:flutter/material.dart';
import 'package:login/register_page.dart';
import 'Getstarted_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'menu.dart';
import 'register_page.dart';
import 'splash_page.dart';
import 'profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    GetstartedPage.tag: (context) => GetstartedPage(),
    Splash.tag: (context) => Splash(),
    ProfilePage.tag: (context) => ProfilePage(),
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegisterPage.tag: (context) => RegisterPage(),
    RegisterPage.tag: (context) => RegisterPage(),
    Menu.tag: (context) => Menu(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: Splash(),
      routes: routes,
    );
  }
}
