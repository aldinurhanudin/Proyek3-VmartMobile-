import 'package:flutter/material.dart';

class EditAddress extends StatefulWidget {
  static String tag = 'EditAddress';

  const EditAddress({
    Key? key,
  }) : super(key: key);

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  TextEditingController _getNama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubah Alamat'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 40.0,
                    color: Color.fromARGB(255, 213, 231, 233),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Text(
                        "Kontak",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                    ]),
                  ),
                  //   Align(
                  //     alignment: Alignment.topLeft,
                  //     child: Text(
                  //             "Kontak",
                  //             style: TextStyle(
                  //               fontSize: 17,
                  //             ),
                  //           ),
                  //   ),
                ],
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _getNama,
                decoration: InputDecoration(labelText: 'Nama'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(labelText: '(+62) 895-3333-22573'),
              ),
              Column(
                children: [
                  // SizedBox(
                  //   height: 12
                  // ),
                  Container(
                    height: 40.0,
                    color: Color.fromARGB(255, 213, 231, 233),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Text(
                        "Alamat",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                    labelText: 'JAWA BARAT, KAB.CIREBON WERU 45154'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                    labelText:
                        'Lor, Blok jelawe, RT.05/RW.03, Desa Karangsari, Weru'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(labelText: 'Jelawe Lor'),
              ),
              // Column(
              //   children: const [
              //     SizedBox(
              //       height: 40
              //     ),
              //     // Row(
              //     //   children: [
              //     //     Icon(Icons.settings, color: Colors.green),
              //     //     SizedBox(width: 10),
              //     //     Text("Pengaturan", style: TextStyle(
              //     //       fontSize: 14,
              //     //       fontWeight: FontWeight.bold
              //     //     )),
              //     //   ],
              //     // ),
              //     Align(
              //       alignment: Alignment.topLeft,
              //       child: Text(
              //               "Pengaturan",
              //               style: TextStyle(
              //                 fontSize: 17,
              //               ),
              //             ),
              //     ),
              //   ],
              // ),
              Column(
                children: [
                  // SizedBox(
                  //   height: 12
                  // ),

                  Container(
                    height: 40.0,
                    color: Color.fromARGB(255, 213, 231, 233),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Text(
                        "Pengaturan",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                    ]),
                  ),
                ],
              ),
              Column(
                children: const [
                  SizedBox(height: 12),
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Tandai Sebagai:",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Atur Sebagai Alamat Utama:",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 45),
              Container(
                height: 45,
                padding: EdgeInsets.only(right: 9, left: 9),
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Simpan"),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
