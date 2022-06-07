import 'package:flutter/material.dart';
import 'home_page.dart';

class CheckoutPage extends StatefulWidget {
  static String tag = 'Checkoutpage';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
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
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        color: Colors.green,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
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
      body: Padding(
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
            _buildTextFormField(emailControlller, context, 'Alamat'),
            _buildTextFormField(emailControlller, context, 'Kota'),
            _buildTextFormField(emailControlller, context, 'Kode Pos'),
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
                Text("Tranfer bank"),
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
                Text("Bayar ditempat"),
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
          ],
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
