import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  static String tag = 'Registerpage';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
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

    final UlangiPassword = TextFormField(
      controller: passC,
      autofocus: false,
      // initialValue: 'terserah',
      obscureText: isHidden,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          hintText: 'UlangiPassword',
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
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ('assets/coverlogin.jpg'),
              ),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
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
                UlangiPassword,
                SizedBox(height: 24.0),
                loginButton,
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
