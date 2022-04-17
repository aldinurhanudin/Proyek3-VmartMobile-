import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  static String tag = 'productdetail';
  final Map product;

  ProductDetail({required this.product});
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
            child: Image.network(product['picture_name']),
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
                  product['price'],
                  style: TextStyle(fontSize: 22),
                ),
                Row(
                  children: [Icon(Icons.shopping_cart), Icon(Icons.share)],
                )
              ],
            ),
          ),
          Text(product['description'])
        ],
      ),
    );
  }
}
