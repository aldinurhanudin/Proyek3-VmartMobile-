import 'dart:async';
import 'dart:io';
import 'package:login/models/cart.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static DbHelper? _dbHelper;
  static Database? _database;

  DbHelper._createObject();

  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper!;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'toko';

    var todoDatabase = openDatabase(path, version: 1, onCreate: _createDb);

    return todoDatabase;
  }

  //buat tabel baru
  void _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE keranjang (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idproduk INTEGER,
        judul TEXT,
        harga TEXT,
        hargax TEXT,
        thumbnail TEXT,
        jumlah INTEGER,
        userid TEXT,
        idcabang TEXT
      );  
    ''');
  }

  Future<Database?> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }

  Future<List<Map<String, dynamic>>> selectcart() async {
    Database? db = await this.database;
    var mapList = await db!.query('keranjang');
    return mapList;
  }

  Future<List<Cart>> getkeranjang() async {
    var mapList = await selectcart();
    int count = mapList.length;
    List<Cart> list = <Cart>[];
    for (int i = 0; i < count; i++) {
      list.add(Cart.fromMap(mapList[i]));
    }
    return list;
  }
}
