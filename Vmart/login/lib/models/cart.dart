class Cart {
  final int? id;
  final int? idproduk;
  final String? judul;
  final String? harga;
  final String? hargax;
  final String? thumbnail;
  final int? jumlah;
  final String? userid;
  final String? idcabang;

  Cart(
      {this.id,
      this.idproduk,
      this.judul,
      this.harga,
      this.hargax,
      this.thumbnail,
      this.jumlah,
      this.userid,
      this.idcabang});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'] as int,
      idproduk: json['idproduk'] as int,
      judul: json['judul'] as String,
      harga: json['harga'] as String,
      hargax: json['hargax'] as String,
      thumbnail: json['thumbnail'] as String,
      jumlah: json['jumlah'] as int,
      userid: json['userid'] as String,
      idcabang: json['idcabang'] as String,
    );
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map['id'] as int,
      idproduk: map['idproduk'] as int,
      judul: map['judul'] as String,
      harga: map['harga'] as String,
      hargax: map['hargax'] as String,
      thumbnail: map['thumbnail'] as String,
      jumlah: map['jumlah'] as int,
      userid: map['userid'] as String,
      idcabang: map['idcabang'] as String,
    );
  }
}
