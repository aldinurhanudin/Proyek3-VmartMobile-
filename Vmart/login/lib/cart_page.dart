import 'package:flutter/material.dart';
import 'package:login/checkout_page.dart';
import 'package:login/product_detail.dart';
// import 'package:login/register_page.dart';

// import 'checkout_page.dart';
import 'models/cart.dart';
import 'register_page.dart';

class CartPage extends StatefulWidget {
  static String tag = 'Cartpage';

  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (int i = 0; i < dataKeranjang.length; i++) {
      print("data ${dataKeranjang[i]['price']}");

      setState(() {
        total += double.parse(dataKeranjang[i]['price']);
      });
    }
    // currentUser.cart.forEach((Cart cart)=> productPrice += cart.quantity*cart.chair.price);
    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang"),
        backgroundColor: Colors.green,
      ),
      bottomSheet: Container(
        height: 130.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, -1), blurRadius: 20.0)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Pembayaran',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rp' + total.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 120.0,
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          // color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0, 2),
                              blurRadius: 30.0,
                            )
                          ]),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(CheckoutPage.tag);
                        },
                        child: Center(
                          child: Text(
                            'CheckOut',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: dataKeranjang.length,
          itemBuilder: (context, index) {
            print(dataKeranjang);
            return ItemKeranjang(
              gambar: dataKeranjang[index]['image'],
              nama: dataKeranjang[index]['name'],
              harga: dataKeranjang[index]['price'],
            );
          },
        ),
      ),
    );
  }
}

class ItemKeranjang extends StatefulWidget {
  String? nama;
  String? harga;
  String? gambar;
  ItemKeranjang({
    this.nama,
    this.harga,
    this.gambar,
    Key? key,
  }) : super(key: key);

  @override
  State<ItemKeranjang> createState() => _ItemKeranjangState();
}

class _ItemKeranjangState extends State<ItemKeranjang> {
  int count = 1;

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
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'http://10.0.2.2:8000/storage/' + widget.gambar!)),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.nama!),
                Text("gram"),
                Row(children: [
                  IconButton(
                    onPressed: min,
                    icon: Icon(
                      Icons.remove,
                    ),
                  ),
                  Text(count.toString()),
                  IconButton(
                    onPressed: add,
                    icon: Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: delete,
                    icon: Icon(Icons.delete),
                  ),
                ])
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 30), child: Text(widget.harga!))
          ],
        ));
  }

  void add() {
    setState(() {
      count += 1;
    });
    // int.parse(widget.harga!) * count;
  }

  void min() {
    if (count <= 1) {
      setState(() => count = 1);
    }
    setState(() {
      count -= 1;
      // int.parse(widget.harga!) * count;
    });
  }

  void delete() {
    setState(() => dataKeranjang.remove);
    // removeCompany(index) {
    //   setState(() {
    //     dataKeranjang.removeAt(index);
    //   });
    // }
    // if (count <= 0) {
    //   setState(() => count = 0);
    // }
    // setState(() {
    //   count == 1;
    //   // int.parse(widget.harga!) * count;
    // });
  }

  // String sumPrice() {
  //   int total = widget.harga!! * count;
  //   return total.toString();
  // }
}
