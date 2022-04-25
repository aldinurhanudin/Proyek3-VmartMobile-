import 'package:flutter/material.dart';

import '../../login_page.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
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
            press: () {},
          ),
          ProfileMenu(
            text: "Bantuan",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
          ),
        ],
      ),
    );
  }
}
