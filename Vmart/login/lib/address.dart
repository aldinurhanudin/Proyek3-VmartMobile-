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
  //final String url = "http://192.168.254.95:8000/api/address/";

  // final String url = "http://10.0.2.2:8000/api/address";

  // final String url = "http://192.168.43.89:8000/api/address/update/{id}";
  String? token = null;
  // void getDataPref() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   setState(() {
  //     token = pref.getString("login");
  //   });
  // }

  Future<List<dynamic>> getAlamat() async {
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // setState(() {
    //   token = pref.getString("login");
    // });
    var response = await http
        .get(Uri.parse("http://192.168.254.95:8000/api/produk/"));
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
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data['data'].length,
                  itemBuilder: (context, index) {
                    return Column();
                  });
            } else {
              return Text('Data Eror');
            }
          },
        ));
  }
}
