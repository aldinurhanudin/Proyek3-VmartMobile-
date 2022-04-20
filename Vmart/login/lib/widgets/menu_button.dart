import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String? label;
  final Icon? icon;
  const MenuButton({Key? key, this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Column(
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Icon(Icons.add_business)),
          Text("$label", style: TextStyle(
            color:Colors.black,
            fontSize:10
          ),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
