import 'package:flutter/material.dart';
// import 'package:proyek3/components/coustom_bottom_nav_bar.dart';
// import 'package:proyek3/enums.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String tag = 'Profilepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.green,
      ),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
