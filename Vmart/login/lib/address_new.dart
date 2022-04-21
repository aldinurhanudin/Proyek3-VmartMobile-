import 'package:flutter/material.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';



class CreatePage extends StatelessWidget {
    static String tag = 'CreatePage';

  const CreatePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alamat Baru'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: 
          Column(
            children: [
              Column(
                children:  [
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
              TextField(
                decoration: InputDecoration(labelText: 'Nama Lengkap'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(labelText: 'Nomor Telepon'),
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
                decoration: InputDecoration(labelText: 'Provinsi, Kota, Kecamatan, Kode Pos'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(labelText: 'Nama Jalan, Gedung, No.Rumah'),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(labelText: 'Detail Lainnya (Contoh: Blok / Unit No., Patokan)'),
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
                  
                  SizedBox(
                    height: 12
                  ),
                  SizedBox(
                    height: 12
                  ),
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
              SizedBox(
                    height: 12
                  ),
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
                  
                  onPressed: (){
                    
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}