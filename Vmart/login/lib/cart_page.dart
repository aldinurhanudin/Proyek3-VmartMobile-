import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  static String tag = 'Cartpage';

  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ItemKeranjang(),
            ],
          )),
    );
  }
}

class ItemKeranjang extends StatelessWidget {
  const ItemKeranjang({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 50, height: 50, color: Colors.black),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Nama"),
                Text("gram"),
                Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove,
                    ),
                  ),
                  Text("0"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                ])
              ],
            ),
            Container(margin: EdgeInsets.only(top: 30), child: Text("200"))
          ],
        ));
  }
}
