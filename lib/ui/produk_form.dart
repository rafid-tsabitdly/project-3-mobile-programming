import 'package:flutter/material.dart';
import 'produk_detail.dart';

class ProdukForm extends StatefulWidget {
  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeController = TextEditingController();
  final _namaController = TextEditingController();
  final _hargaController = TextEditingController();

  Widget _textboxKodeProduk() {
    return TextField(
      controller: _kodeController,
      decoration: InputDecoration(labelText: "Kode Produk"),
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      controller: _namaController,
      decoration: InputDecoration(labelText: "Nama Produk"),
    );
  }

  Widget _textboxHargaProduk() {
    return TextField(
      controller: _hargaController,
      decoration: InputDecoration(labelText: "Harga"),
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      child: Text("Simpan"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: _kodeController.text,
              namaProduk: _namaController.text,
              harga: _hargaController.text,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Produk")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }
}
