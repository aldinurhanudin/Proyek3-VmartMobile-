import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bantuan extends StatelessWidget {
  static String tag = 'Bantuan';
  const Bantuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
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
                        color: Color.fromARGB(255, 246, 249, 249),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hubungi Kami",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded, size: 20),
                            ]),
                      ),
                    ],
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "• Customer  Service Vmart",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Nomor WhatsApp: +62895333322573",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Email: support@vmart.com",
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
                  Container(
                    height: 40.0,
                    color: Color.fromARGB(255, 246, 249, 249),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Informasi Produk",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 20),
                        ]),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "• Bagaimana mengecek keadaann produk?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ketersediaan produk dapat dicek melalui aplikasi mobile atau ",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "website Vmart pada halaman detail produk.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "• Bagaimana melihat detail informasi produk?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "1. Klik produk yang kamu inginkan",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2. Lihat keterangan produk dibawah gambar, terdapat",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "spesifikasi produk: harga, jumlah, deskripsi produk ",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    height: 40.0,
                    color: Color.fromARGB(255, 246, 249, 249),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pengiriman",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 20),
                        ]),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "• Kemana Vmart dapat menirimkan pesanana?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Vmart menjangkau beberapa era Indramayu, namun untuk",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "beberapa area ada yang belum masuk ke wilayah jangkauan pengiriman.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Container(
                    height: 40.0,
                    color: Color.fromARGB(255, 246, 249, 249),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tidak menemukan jawaban kamu di Vmart?",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 20),
                        ]),
                  ),
                  Divider(
                    // height: 2,
                    color: Color.fromARGB(255, 161, 160, 160),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Jika kamu tidak menemukan jawaban kamu di Vmart ini,",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "kamu dapat menghubungi customer service Vmart untuk",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "pertanyaan atau hal-hal yang lain kamu sampaikan.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "E-mail: support@vmart.com",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
