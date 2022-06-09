import 'dart:convert';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  static String tag = 'Registerpage';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController usernameC = TextEditingController();
  TextEditingController nohpC = TextEditingController();
  TextEditingController alamatC = TextEditingController();

  void register() async {
    var response = await http.post(
        // Uri.parse("http://192.168.254.95:8000/api/register"),

        Uri.parse("http://10.0.2.2:8000/api/register"),
        body: ({
          "email": emailC.text,
          "password": passC.text,
          "username": usernameC.text,
          "nohp": nohpC.text,
          "alamat": alamatC.text
        }));

    if (response.statusCode == 200) {
      final body = json.decode(response.body);

      // rutePage(body["berhasil"]);
      print("berhasil");
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
    final username = TextFormField(
      controller: usernameC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'aldinurhanudin08@gmail.com',
      decoration: InputDecoration(
        hintText: 'Username',
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
      controller: nohpC,
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

    final alamat = TextFormField(
      controller: alamatC,
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
        prefixIcon: Icon(Icons.location_on),
      ),
    );
    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          //print("LOGIN DENGAN : EMAIL(${emailC.text}) & PASS(${passC.text})");
          register();
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
                Container(
                    margin: EdgeInsets.only(top: 40, left: 40), child: logo),
                email,
                SizedBox(height: 8.0),
                password,
                SizedBox(height: 8.0),
                username,
                SizedBox(height: 8.0),
                nohp,
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

  void rutePage(body) {}
}
