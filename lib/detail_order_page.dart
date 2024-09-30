import 'package:flutter/material.dart';

class DetailOrderPage extends StatefulWidget {
  @override
  _DetailOrderPageState createState() => _DetailOrderPageState();
}

class _DetailOrderPageState extends State<DetailOrderPage> {
  final _quantityController = TextEditingController();
  double _price = 15000; 
  double _totalPrice = 0;

  void _submit() {
    final quantity = int.tryParse(_quantityController.text) ?? 0;
    setState(() {
      _totalPrice = _price * quantity.toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Order")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network("assets/noodle.jpg", height: 100,),
            Text("Bakmie"),
            Text("Harga: $_price"),
            TextField(
              controller: _quantityController,
              decoration: InputDecoration(labelText: "Jumlah Pesanan"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _submit,
              child: Text("Submit"),
            ),
            SizedBox(height: 20),
            Text("Total Harga: $_totalPrice"),
          ],
        ),
      ),
    );
  }
}
