import 'package:flutter/material.dart';

class EditAddress extends StatelessWidget {
  static String tag = 'EditAddress';

  const EditAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubah Alamat'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
