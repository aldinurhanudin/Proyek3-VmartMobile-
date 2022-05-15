import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlamatBaru extends StatefulWidget {
  // shared preference alamat baru
  static String tag = 'AlamatBaru';
  @override
  _AlamatBaruState createState() => _AlamatBaruState();
}

class _AlamatBaruState extends State<AlamatBaru> {

  final _namalengkap = new TextEditingController();
  final _alamat = new TextEditingController();
  final _noHp = new TextEditingController();

  static const String keyNamaLengkap = "prefKeyNama";
  static const String keyAlamat = "prefKeyAlamat";
  static const String keyNoHp = "prefKeyNoHp";

  simpanData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(keyNamaLengkap, _namalengkap.text.toString());
    pref.setString(keyAlamat, _alamat.text.toString());
    pref.setString(keyNoHp, _noHp.text.toString());

    print("Data Sudah Disimpan");
  }

  lihatData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? namaLengkap = pref.getString(keyNamaLengkap);
    String? alamat = pref.getString(keyAlamat);
    String? noHp = pref.getString(keyNoHp);
    

    print("nama lengkap : $namaLengkap alamat : $alamat No Hp : $noHp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Alamat"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                controller: _namalengkap,
                decoration: InputDecoration(
                  hintText: "Masukan Nama Lengkap",
                  labelText: "Nama Lengkap"
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _alamat,
                decoration: InputDecoration(
                  hintText: "Masukan Alamat",
                  labelText: "Alamat"
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _noHp,
                decoration: InputDecoration(
                  hintText: "Masukan NoHp",
                  labelText: "NoHp"
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  OutlineButton(child: Text("Simpan"), onPressed: () => simpanData(),),
                  OutlineButton(child: Text("Lihat"), onPressed: () => lihatData(),),
                ]
              )
            ]
          ),
        ),
      ),
    );
  }
}