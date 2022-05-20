import 'package:flutter/material.dart';
import 'package:login/product_detail.dart';

class Favorite extends StatefulWidget {
  static String tag = 'Favorite';
  const Favorite({ Key? key }) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Saya"),
        backgroundColor: Colors.green,
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
        // child: ElevatedButton(
        //   child: Text('checkout'),
        //   onPressed:(){
        //     showModalBottomSheet(context: context, builder: builder)
        //   }
        // )
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
                // Row(children: [
                //   IconButton(
                //     onPressed: min,
                //     icon: Icon(
                //       Icons.remove,
                //     ),
                //   ),
                //   Text(count.toString()),
                //   IconButton(
                //     onPressed: add,
                //     icon: Icon(Icons.add),
                //   ),
                // ])
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 30), child: Text(widget.harga!))
          ],
        ));
  }

  // void add() {
  //   setState(() {
  //     count += 1;
  //   });
  //   // int.parse(widget.harga!) * count;
  }

  // void min() {
  //   if (count <= 1) {
  //     setState(() => count = 1);
  //   }
  //   setState(() {
  //     count -= 1;
  //     // int.parse(widget.harga!) * count;
  //   });
  // }

  // String sumPrice() {
  //   int total = widget.harga!! * count;
  //   return total.toString();
  // }
// }
