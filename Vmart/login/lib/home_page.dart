import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'Homepage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<int> cardList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Vmart"),
      // ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                // padding: EdgeInsets.all(10),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text('search')
                  ],
                ),
              ),
              SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
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
                padding: EdgeInsets.only(left: 8.0, right: 280.0),
                child: Text('Categories'),
              ),
              Container(
                padding: EdgeInsets.only(left: 280.0, right: 8.0),
                child: Text('See all>'),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(100)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage: AssetImage('assets/wortel.png'),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8.0, right: 280.0),
                        child: Text('Vegetables'),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage: AssetImage('assets/buah.png'),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8.0, right: 10.0),
                        child: Text('Fruits'),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage: AssetImage('assets/produk.png'),
                      ),
                      Container(
                        child: new Center(
                          child: new Text("Semua Produk"),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage: AssetImage('assets/kategori.png'),
                      ),
                      Container(
                        child: new Center(
                          child: new Text("Kategori"),
                        ),
                      ),
                      SizedBox(height: 20),
                      CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
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
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _currentIndex == index
                                  ? Colors.green
                                  : Colors.green.withOpacity(0.3),
                            ),
                          );
                        }),
                      ),
                    ]),
              ),
            ],
          ),
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
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
        ],
      ),
      child: Center(child: Image.asset('assets/coverlogin.png')),
    );
  }
}
// class HomePage extends StatelessWidget {
//   static String tag = 'home-page';

//   @override
//   Widget build(BuildContext context) {
//     final profil = Hero(
//       tag: 'hero',
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: CircleAvatar(
//           radius: 72.0,
//           backgroundColor: Colors.transparent,
//           backgroundImage: AssetImage('assets/Logo.png'),
//         ),
//       ),
//     );

//     final welcome = Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Text(
//         'Selamat datang',
//         style: TextStyle(fontSize: 28.0, color: Colors.white),
//       ),
//     );

//     final paragraf1 = Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Text(
//         'Halo, nama saya aldi yang sedang membuat tampilan mobile Vmart',
//         style: TextStyle(fontSize: 16.0, color: Colors.white),
//       ),
//     );
    
//     final paragraf2 = Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Text(
//         'Saat ini, saya adalah mahasiswa di polindra',
//         style: TextStyle(fontSize: 16.0, color: Colors.white),
//       ),
//     );

//     final paragraf3 = Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Text(
//         'Pernah menempuh pendidikan di SMA 1 JASINGA mengambil jurusan IPA.',
//         style: TextStyle(fontSize: 16.0, color: Colors.white),
//       ),
//     );

//     final body = Container(
//       width: MediaQuery.of(context).size.width,
//       padding: EdgeInsets.all(28.0),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: [
//           Colors.blue,
//           Colors.lightBlueAccent,
//         ]),
//       ),
//       child: Column(
//         children: <Widget>[profil, welcome, paragraf1,paragraf2,paragraf3],
//       ),
//     );

//     return Scaffold(
//       body: body,
//     );
//   }
// }