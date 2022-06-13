import 'package:flutter/material.dart';
import 'package:login/favorite.dart';

import 'cart_page.dart';

class ProductDetail extends StatefulWidget {
  static String tag = 'productdetail';
  final Map product;

  ProductDetail({required this.product});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            child: Image.network(
                'https://vmart.proyek.ti.polindra.ac.id/public/storage/' +
                    widget.product['picture_name']),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.product['price'],
                  style: TextStyle(fontSize: 22),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          dataKeranjang.add({
                            "name": widget.product['name'],
                            "price": widget.product['price'],
                            "image": widget.product['picture_name']
                          });
                        });
                        print(dataKeranjang);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartPage()));
                      },
                      icon: Icon(Icons.shopping_cart),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          dataKeranjang.add({
                            "name": widget.product['name'],
                            "price": int.parse(widget.product['price']),
                            "image": widget.product['picture_name']
                          });
                        });
                        print(dataKeranjang);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Favorite()));
                      },
                      icon: Icon(Icons.favorite),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(widget.product['description']),
          Container(
            height: 40.0,
            width: 250.0,
            // margin: EdgeInsets.only(right: 9, left: 9),
            margin: EdgeInsets.only(top: 9),
            padding: EdgeInsets.only(right: 9, left: 9),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10.0),
              // boxShadow: [
              //   // BoxShadow(
              //   //   color: Colors.black,
              //   //   offset: Offset(0, 2),
              //   //   // blurRadius: 30.0,
              //   // )
              // ]
            ),
            child: Center(
              child: Text(
                'Beli Sekarang',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> dataKeranjang = [];
