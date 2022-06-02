import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

class CheckoutPage extends StatefulWidget {
  static String tag = 'Checkoutpage';
  @override
  _CheckoutPageState createState() => new _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final logo = Hero(
    //   tag: 'hero',
    //   child: Image(
    //       image: AssetImage('assets/Logo.png'),
    //       alignment: Alignment.center,
    //       width: 100,
    //       height: 100),
    // );

    final username = TextFormField(
      controller: emailC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'aldinurhanudin08@gmail.com',
      decoration: InputDecoration(
        hintText: 'Pengiriman Untuk nama',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 223, 0, 0), width: 200),
        ),
        prefixIcon: Icon(Icons.email),
      ),
    );

    final nohp = TextFormField(
      controller: emailC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'aldinurhanudin08@gmail.com',
      decoration: InputDecoration(
        hintText: 'No Hp',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 223, 0, 0), width: 200),
        ),
        prefixIcon: Icon(Icons.phone),
      ),
    );

    final email = TextFormField(
      controller: emailC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'aldinurhanudin08@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 223, 0, 0), width: 200),
        ),
        prefixIcon: Icon(Icons.email),
      ),
    );
    final alamat = TextFormField(
      controller: emailC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'aldinurhanudin08@gmail.com',
      decoration: InputDecoration(
        hintText: 'Alamat',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 223, 0, 0), width: 200),
        ),
        prefixIcon: Icon(Icons.email),
      ),
    );
    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          print("LOGIN DENGAN : EMAIL(${emailC.text}) & PASS(${passC.text})");
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Color.fromARGB(255, 10, 160, 22),
        child: Text('Sign Up',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
      ),
    );

    // final forgotLabel = FlatButton(
    //   child: Text(
    //     'Lupa password?',
    //     style: TextStyle(color: Colors.black54),
    //   ),
    //   onPressed: () {
    //     Navigator.of(context).pushNamed(LoginPage.tag);
    //   },
    // );

    final daftar = Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Sudah punya akun?'),
        FlatButton(
          child: Text(
            'Masuk Sekarang',
            style: TextStyle(color: Color.fromARGB(255, 10, 160, 22)),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.tag);
          },
        ),
      ],
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.green,
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
                // Container(
                //     margin: EdgeInsets.only(top: 40, left: 40), child: logo),
                username,
                SizedBox(height: 8.0),

                nohp,
                SizedBox(height: 8.0),
                email,
                SizedBox(height: 8.0),
                alamat,
                SizedBox(height: 24.0),
                registerButton,
                // forgotLabel,
                daftar
              ],
            ),
          ),
        ),
      ),
    );
  }

  all() {}
}
