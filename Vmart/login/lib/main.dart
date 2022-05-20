import 'package:flutter/material.dart';
import 'package:login/favorite.dart';
import 'package:login/product_detail.dart';
import 'package:login/register_page.dart';
import 'Getstarted_page.dart';
import 'address.dart';
import 'address_new.dart';
import 'alamat_baru.dart';
import 'allproduct_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'menu.dart';
import 'profile/profile_screen.dart';
import 'register_page.dart';
import 'splash_page.dart';
import 'profile_page.dart';
import 'edit_address.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    GetstartedPage.tag: (context) => GetstartedPage(),
    Splash.tag: (context) => Splash(),
    ProfilePage.tag: (context) => ProfilePage(),
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegisterPage.tag: (context) => RegisterPage(),
    AllproductPage.tag: (context) => AllproductPage(),
    ProductDetail.tag: (context) => ProductDetail(
          product: {},
        ),
    CreatePage.tag: (context) => CreatePage(),
    AlamatBaru.tag: (context) => AlamatBaru(),
      Address.tag: (context) => Address(),
      // EditAddress.tag: (context) => EditAddress(),
      Favorite.tag: (context) => Favorite(),
    ProfileScreen.tag: (context) => ProfileScreen(),
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
