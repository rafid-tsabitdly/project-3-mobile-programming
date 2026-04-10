import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final String harga;

  ProdukDetail({
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Produk")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kode: $kodeProduk"),
            Text("Nama: $namaProduk"),
            Text("Harga: $harga"),
          ],
        ),
      ),
    );
  }
}
