import 'package:flutter/material.dart';

class CardSayur extends StatelessWidget {
  String? nama;
  String? harga;
  String? gambar;

  CardSayur({this.nama, this.harga, this.gambar, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: CircleBorder(side: BorderSide()),
      elevation: 3,
      child: Container(
        height: 190,
        width: 195,
        color: Colors.green,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.width / 4.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(gambar.toString()),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                nama.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                margin: EdgeInsets.all(4),
                // color: Colors.black,
                // padding: EdgeInsets.only(left: 0.5, right: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Rp. ${harga.toString()}"),
                    SizedBox(width: 20),
                    Text("/gram")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
