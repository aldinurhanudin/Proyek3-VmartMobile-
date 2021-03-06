import 'package:flutter/material.dart';
import 'package:login/menu.dart';
import 'package:login/product_detail.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cool_alert/cool_alert.dart';

class CheckoutPage extends StatefulWidget {
  static String tag = 'Checkoutpage';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int _value = 1;
  TextEditingController emailC = TextEditingController();
  TextEditingController nameC = TextEditingController();
  TextEditingController adressC = TextEditingController();
  TextEditingController cityC = TextEditingController();
  TextEditingController countryC = TextEditingController();
  TextEditingController zipcodeC = TextEditingController();

  void register() async {
    var response = await http.post(
        // Uri.parse("http://192.168.254.95:8000/api/register"),

        Uri.parse("https://vmart.proyek.ti.polindra.ac.id/public/api/register"),
        body: ({
          "email": emailC.text,
          // "password": passC.text,
          // "username": usernameC.text,
          // "phone_number": nohpC.text,
          // "address": alamatC.text
        }));

    if (response.statusCode == 200) {
      final body = json.decode(response.body);

      // rutePage(body["berhasil"]);
      print("berhasil");
    } else {
      print("Gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    double total = 0;
    double jumlah = 10000;
    double hasil = 0;
    for (int i = 0; i < dataKeranjang.length; i++) {
      print("data ${dataKeranjang[i]['price']}");

      setState(() {
        total += double.parse(dataKeranjang[i]['price']);
        hasil = jumlah + total;
      });
    }
    final TextEditingController emailControlller = TextEditingController();
    final TextEditingController nameControlller = TextEditingController();
    final TextEditingController addressControlller = TextEditingController();
    final TextEditingController cityControlller = TextEditingController();
    final TextEditingController countryControlller = TextEditingController();
    final TextEditingController zipCodeControlller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Container(
            alignment: Alignment.center,
            height: 40.0,
            width: 150,
            color: Colors.green,
            child: Text(
              "Checkout",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          )),
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Informasi Pelanggan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                _buildTextFormField(emailControlller, context, 'Email'),
                _buildTextFormField(nameControlller, context, 'Nama'),
                Text(
                  'INFORMASI PEMBAYARAN',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                _buildTextFormField(addressControlller, context, 'Alamat'),
                _buildTextFormField(cityControlller, context, 'Kota'),
                _buildTextFormField(zipCodeControlller, context, 'Kode Pos'),
                Text(
                  'Metode Pembayaran',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = _value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Bayar ditempat"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = _value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Tranfer bank"),
                  ],
                ),
                Text(
                  'RINGKASAN PESANAN',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SUBTOTAL',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rp' + total.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Text(
                      //   '\Rp.10000.00',
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontSize: 15.0,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ONGKIR',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\Rp.10000.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(50),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'TOTAL',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              'Rp' + hasil.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        color: Colors.green,
        child: TextButton(
          onPressed: () {
            CoolAlert.show(
              context: context,
              type: CoolAlertType.success,
              text: "Your transaction was successful!",
              onConfirmBtnTap: () => Navigator.of(context).pushNamed(Menu.tag),
             
            );
            // onConfirmBtnTap:
            // () => Navigator.of(context).pushNamed(Menu.tag);
            // Navigator.of(context).pushNamed(Menu.tag);
            // () => Navigator.pop(context).pushNamed(Menu.tag);
          },
          child: Container(
              alignment: Alignment.center,
              width: 150,
              height: 50,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Text("Buat Pesanan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }

  Padding _buildTextFormField(
    TextEditingController controller,
    BuildContext context,
    String labelText,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 75,
            child:
                Text(labelText, style: Theme.of(context).textTheme.bodyText1),
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.only(left: 10),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
