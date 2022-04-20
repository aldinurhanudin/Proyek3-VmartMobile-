import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0).copyWith(bottom: 8),
          child: Container(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(Icons.search, size: 15, color: Colors.grey),
                      Text(
                        "Cari di Vmart",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Icon(Icons.mail_outline)),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Icon(Icons.notifications_none)),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Icon(Icons.shopping_cart_outlined)),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Icon(Icons.menu)),
            ],
          )),
        ),
        Divider()
      ],
    );
  }
}
