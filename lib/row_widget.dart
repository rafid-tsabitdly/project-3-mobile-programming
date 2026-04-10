import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Row")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text("Kiri"), Text("Tengah"), Text("Kanan")],
      ),
    );
  }
}
