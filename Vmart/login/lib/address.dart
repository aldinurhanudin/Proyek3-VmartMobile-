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
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.white,
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ICA NATASYA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '(+62) 895-3333-22573',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Lor, Blok jelawe, RT.05/RW.03, Desa Karangsari, Weru (Jelawe Lor)',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'WERU,KAB. CIREBON, JAWA BARAT, ID 45154',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: FlatButton(
                  onPressed: () {
                    print('OK');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tambah Alamat"),
                      Icon(Icons.add),
                    ],
                  ),
                )),
          ],
        ));
  }
}
