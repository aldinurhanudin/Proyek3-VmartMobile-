import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class CartPage extends StatefulWidget {
  static String tag = 'Cartpage';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/selada.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Selada',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('200 gram'),
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
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 29,
                      top: 69.82,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/selada.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Selada',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('200 gram'),
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
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 29,
                      top: 69.82,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/selada.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Selada',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('200 gram'),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/tambah.png'),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/tambah.png'),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black.withOpacity(0.2),
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
