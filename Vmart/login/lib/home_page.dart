import 'dart:convert';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login/widgets/card_sayur.dart';
import 'package:login/widgets/custom_app_bar.dart';
import 'allproduct_page.dart';
import 'register_page.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  static String tag = 'Homepage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url = "http://10.0.2.2:8000/api/produk";
  Future getProducts() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  int _currentIndex = 0;
  List<int> cardList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  get mainColor => null;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final heighBody = MediaQuery.of(context).size.height;
    final widthBody = MediaQuery.of(context).size.width;

    final daftar = Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.home,
          color: Colors.grey,
        ),
        FlatButton(
          child: Text(
            'Home',
            style: TextStyle(color: Color.fromARGB(255, 10, 160, 22)),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(RegisterPage.tag);
          },
        ),
      ],
    ));
    // return Scaffold();
    // var customAppBar = CustomAppBar();
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Container(
                //   child: ListView(
                //     children: [
                //       Container(
                //         color: Colors.blue,
                //         child: Text("test"),
                //       ),
                //     ],
                //   ),
                // ),
                SafeArea(
                  child: CustomAppBar(),
                ),
                SizedBox(height: 20),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 125.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                  items: cardList.map((item) {
                    return ItemCard(title: item.toString());
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: _currentIndex == index ? 30 : 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _currentIndex == index
                            ? Colors.green
                            : Colors.green.withOpacity(0.3),
                      ),
                    );
                  }),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Kategori",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "lihat semua >",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/wortel.png'),
                          ),
                          Text('Vegetables'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/buah.png'),
                          ),
                          Text('Fruits'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/produk.png'),
                          ),
                          Text('Semua Produk'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/kategori.png'),
                          ),
                          Text(
                            'Produk',
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Spesial Hari ini",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "lihat semua >",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 125.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                  items: cardList.map((item) {
                    return ItemCard(title: item.toString());
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: _currentIndex == index ? 30 : 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _currentIndex == index
                            ? Colors.green
                            : Colors.green.withOpacity(0.3),
                      ),
                    );
                  }),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Produk Terlaris',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      FlatButton(
                        child: Text(
                          'Lihat Semua>',
                          style: TextStyle(
                              color: Color.fromARGB(255, 10, 160, 22)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(AllproductPage.tag);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.white,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    buildCard(context),
                    buildCard(context),
                    buildCard(context),
                    buildCard(context),
                  ]),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Kumpulan Rekomendasi Untukmu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      // Text("lihat semua >")
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Ada Rekomendasi yang Bikin Happy"),
                      // Text("lihat semua >")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    "assets/bannervmart.png",
                    alignment: Alignment.center,
                    width: 700.0,
                    height: 250.0,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 30, right: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Spesial hari ini',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      FlatButton(
                        child: Text(
                          'Lihat Semua>',
                          style: TextStyle(
                              color: Color.fromARGB(255, 10, 160, 22)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(AllproductPage.tag);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.white,
                    child: FutureBuilder(
                      future: getProducts(),
                      builder: (context, AsyncSnapshot snapshot) {
                        return ListView.builder(
                          itemBuilder: (context, index) {
                            return CardSayur();
                          },
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context) {
    return Card(
      // shape: CircleBorder(side: BorderSide()),
      elevation: 3,
      child: Container(
        height: 190,
        width: 195,
        color: mainColor,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.width / 4.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/selada.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Selada",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(4),
                padding: EdgeInsets.only(left: 0.5, right: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("Rp.6000"), Text("/gram")],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title;

  const ItemCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
        ],
      ),
      child: Center(
          child: Image.asset(
        'assets/coverlogin.png',
        fit: BoxFit.cover,
      )),
    );
  }
}
