import 'package:flutter/material.dart';
import 'home_page.dart';

class CheckoutPage extends StatefulWidget {
  static String tag = 'Checkoutpage';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
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
        color: Colors.black,
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
            Text(
              'Delivery nformation',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Informasi Pelanggan',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
