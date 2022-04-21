import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  static String tag = 'Profilepage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("My Profile"),
        // ),
        body: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 64.32, width: 63.44),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 29,
                      top: 69.82,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 27,
                              // backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                'assets/selada.png',
                              ),
                            ),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'User',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Sahrulfyou@gmail.com')
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20, right: 29, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Pesanan saya",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(" >",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20, right: 29, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Pengaturan akun",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(" >",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20, right: 29, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Alamat saya",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                        Text(" >",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                   Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20, right: 29, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Bantuan",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(" >",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  
                  Container(
                    // width: MediaQuery.of(context).size.width / 2.5,
                    // height: MediaQuery.of(context).size.width / 4.5,
                    padding: EdgeInsets.symmetric(vertical: 100.0),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // RaisedButton(
                        //   onPressed: () {},
                        //   color: Colors.green,
                        //   child: Text('LOG OUT'),
                        // ),

                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(LoginPage.tag);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              padding: EdgeInsets.only(
                                  left: 60, right: 60, top: 10, bottom: 12),
                            ),
                            child: Text(
                              'LOG OUT',
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
