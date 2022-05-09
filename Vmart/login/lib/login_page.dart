import 'package:flutter/material.dart';
import 'package:login/coba.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';
import 'menu.dart';
import 'register_page.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  void sign_in() async {
    var response = await http.post(
        Uri.parse("http://10.0.2.2:8000/api/sign_in"),
        body: ({"email": emailC.text, "password": passC.text}));

    if (response.statusCode == 200) {
      final body = json.decode(response.body);

      rutePage(body["token"]);
    } else {
      print("Gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image(
          image: AssetImage('assets/Logo.png'),
          alignment: Alignment.center,
          width: 100,
          height: 100),
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

    final password = TextFormField(
      controller: passC,
      autofocus: false,
      // initialValue: 'terserah',
      obscureText: isHidden,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: Icon(Icons.vpn_key),
          suffixIcon: IconButton(
            onPressed: () {
              if (isHidden == true) {
                isHidden = false;
              } else {
                isHidden = true;
              }
              setState(() {});
            },
            icon: Icon(Icons.remove_red_eye),
          )),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          sign_in();
        },
        padding: EdgeInsets.all(12),
        color: Color.fromARGB(255, 10, 160, 22),
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Lupa password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        print('ok');
      },
    );

    final daftar = Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Belum punya akun?'),
        FlatButton(
          child: Text(
            'Daftar Sekarang',
            style: TextStyle(color: Color.fromARGB(255, 10, 160, 22)),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(RegisterPage.tag);
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
                Container(
                    margin: EdgeInsets.only(top: 40, left: 40), child: logo),
                email,
                SizedBox(height: 8.0),
                password,
                SizedBox(height: 24.0),
                loginButton,
                forgotLabel,
                daftar
              ],
            ),
          ),
        ),
      ),
    );
  }

  void rutePage(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("login", token);
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }
} 
