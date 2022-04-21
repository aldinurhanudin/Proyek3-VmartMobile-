import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String? label;
  final String imageLocation;
  const MenuButton(this.imageLocation, {Key? key, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 50,
      child: Column(
        children: [
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(imageLocation))),
          Text(
            "$label",
            style: TextStyle(color: Colors.black, fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
