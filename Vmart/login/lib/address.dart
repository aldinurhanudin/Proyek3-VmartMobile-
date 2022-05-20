import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login/address_new.dart';
import 'package:login/edit_address.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'alamat_baru.dart';

class Address extends StatefulWidget {
  static String tag = 'Address';

  Address({Key? key}) : super(key: key);
//   final Map address;
// Address({required this.address});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  // final String url = "http://10.0.127.92:8000/api/address";
  final String url = "http://10.0.2.2:8000/api/address";

  // final String url = "http://192.168.43.89:8000/api/address/update/{id}";

  Future getAlamat() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

// Future<void> getalamat() async {
  @override
  Widget build(BuildContext context) {
    getAlamat();
    return Scaffold(
        appBar: AppBar(
          title: Text('Alamat Saya'),
          backgroundColor: Colors.green,
        ),
        // body: ListView(
        //   children: <Widget>[
        //     Text('ICA NATASYA',
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 16,
        //     ),
        //     ),
        //     Text('(+62) 895-3333-22573',
        //     style: TextStyle(
        //       fontSize: 12
        //     ),
        //     ),
        //     Text('Lor, Blok jelawe, RT.05/RW.03, Desa Karangsari, Weru (Jelawe Lor)',
        //     style: TextStyle(
        //       fontSize: 12
        //     ),
        //     ),
        //     Text('WERU,KAB. CIREBON, JAWA BARAT, ID 45154',
        //     style: TextStyle(
        //       fontSize: 12
        //     ),
        //     ),
        //   ],
        // ),

        body: FutureBuilder(
          future: getAlamat(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data['data'].length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          // height: 50,
                          color: Colors.white,
                          padding:
                              EdgeInsets.only(left: 10, top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // 'ICA NATASYA',
                                snapshot.data['data'][index]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                // '(+62) 895-3333-22573',
                                snapshot.data['data'][index]['phone_number'],
                                style: TextStyle(fontSize: 12),
                              ),
                              // Text(
                              //   'Lor, Blok jelawe, RT.05/RW.03, Desa Karangsari, Weru (Jelawe Lor)',
                              //   style: TextStyle(fontSize: 12),
                              // ),
                              Text(
                                // 'WERU,KAB. CIREBON, JAWA BARAT, ID 45154',
                                // style: TextStyle(fontSize: 12),
                                snapshot.data['data'][index]['address'],
                                style: TextStyle(fontSize: 15),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 350),

                                child: IconButton(
                                    icon: Icon(Icons.location_on_outlined),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(EditAddress.tag);
                                    }),
                                //Icon(Icons.location_on_outlined)
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //     width: MediaQuery.of(context).size.width,
                        //     height: 40,
                        //     color: Colors.white,
                        //     padding: EdgeInsets.all(10),
                        //     child: FlatButton(
                        //       onPressed: () {
                        //         print('OK');
                        //       },
                        // child: Row(
                        //   mainAxisAlignment:
                        //       MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text("Tambah Alamat"),

                        //     Container(
                        //       margin: EdgeInsets.only(left: 100),
                        //       child: IconButton(
                        //           icon: Icon(Icons.add),
                        //           onPressed: () {
                        //             // Navigator.of(context).pushNamed(CreatePage.tag);
                        //             Navigator.of(context)
                        //                 .pushNamed(AlamatBaru.tag);
                        //           }),
                        //     ),

                        //     // Icon(Icons.add),
                        //   ],
                        // ),
                        // )),
                      ],
                    );
                  });
            } else {
              return Text('Data Eror');
            }
          },
        ));
  }
}
