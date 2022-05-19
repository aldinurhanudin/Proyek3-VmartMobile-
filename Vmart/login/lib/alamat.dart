// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:login/address_new.dart';
// import 'package:login/edit_address.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;
// import 'alamat_baru.dart';

// class Alamat extends StatefulWidget {
//   static String tag = 'Alamat';
//   Alamat({Key? key}) : super(key: key);
//   @override
//   _AlamatState createState() => _AlamatState();
  
// }

// class _AlamatState extends State<Alamat> {
//   final String url = "http://192.168.100.155:8000/api/address";

//   Future getAlamat() async {
    
//     var response = await http.get(Uri.parse(url));
//     print(json.decode(response.body));
//     return json.decode(response.body);
    
//   }

//   @override
//   Widget build(BuildContext context) {
//     getAlamat();
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('Alamat Saya'),
//           backgroundColor: Colors.green,
//         ),
        
//             // if(snapshot.hasData){
//             //   return ListView.builder
//             // }
          
//     );
//   }
// }