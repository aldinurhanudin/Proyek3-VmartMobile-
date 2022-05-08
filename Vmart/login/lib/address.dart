import 'package:flutter/material.dart';

class Address extends StatelessWidget {

  static String tag = 'Address';

  const Address({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alamat Saya'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          Text('ICA NATASYA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          ),
          Text('(+62) 895-3333-22573',
          style: TextStyle(
            fontSize: 12
          ),
          ),
          Text('Lor, Blok jelawe, RT.05/RW.03, Desa Karangsari, Weru (Jelawe Lor)',
          style: TextStyle(
            fontSize: 12
          ),
          ),
          Text('WERU,KAB. CIREBON, JAWA BARAT, ID 45154',
          style: TextStyle(
            fontSize: 12
          ),
          ),
        ],
      ),
      
    );
  }
}