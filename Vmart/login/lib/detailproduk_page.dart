import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

class DetailprodukPage extends StatefulWidget {
  static String tag = 'Registerpage';
  @override
  _DetailprodukPageState createState() => new _DetailprodukPageState();
}

class _DetailprodukPageState extends State<DetailprodukPage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image(
          image: AssetImage('assets/selada.png'),
          alignment: Alignment.topCenter,
          width: 20,
          height: 800),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            
            // color: Colors.white,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 40, left: 40), child: logo),

                // forgotLabel,
              ],
            ),
          ),
        ),
      ),
    );
  }

  all() {}
}
