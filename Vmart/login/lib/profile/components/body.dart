import 'package:flutter/material.dart';
import 'package:login/address.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../login_page.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';
import 'dart:async';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? token = null;
  @override
  void initState() {
    super.initState();
    getDataPref();
  }

  void getDataPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      token = pref.getString("login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          // ProfileMenu(
          //   text: "Akun Saya",
          //   icon: "assets/icons/User Icon.svg",
          //   press: () => {},
          // ),
          ProfileMenu(
            text: "Pesanan Saya",
            icon: "assets/icons/Cart Icon.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Pengaturan",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Alamat Saya",
            icon: "assets/icons/User Icon.svg",
            press: () {Navigator.of(context).pushNamed(Address.tag);},
          ),
          ProfileMenu(
            text: "Bantuan",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              await pref.clear();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
