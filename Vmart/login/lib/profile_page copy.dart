import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String tag = 'Profilepage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Vmart"),
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
                                    fontSize: 24, fontWeight: FontWeight.bold),
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
                      Text("Spesial Hari ini",
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
                  color: Colors.black,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Produk Terlaris",
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
                  color: Colors.black,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 20, right: 29, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Produk Terlaris",
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
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
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