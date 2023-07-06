import 'package:coffeshop_app/model/pesanan.dart';
import 'package:coffeshop_app/model/product.dart';
import 'package:coffeshop_app/page/detail_pesanan_coffee.dart';
import 'package:flutter/material.dart';

class FormPesananCoffee extends StatefulWidget {
  final Product product;
  const FormPesananCoffee({super.key, required this.product});

  @override
  State<FormPesananCoffee> createState() => _FormPesananCoffeeState();
}

class _FormPesananCoffeeState extends State<FormPesananCoffee> {
  final _formKey = GlobalKey<FormState>();
  final _banyakController = TextEditingController(text: '1');

  var totalBayar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemesanan"),
      ),
      body: ListView(children: [
        Card(
          child: ListTile(
            leading: Image.asset("${widget.product.img}"),
            title: Text(
              "${widget.product.namaProduct}",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.brown,
                  fontSize: 18),
            ),
            subtitle: Text("Rp. " + "${widget.product.price}"),
          ),
        ),
        Card(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextField(
                      autofocus: true,
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefix: Text("Banyak :"),
                      ),
                      controller: _banyakController,
                      cursorColor: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPesananCoffee(
                          pesanan: Pesanan(
                              banyak: int.parse(_banyakController.text),
                              totalBayar: int.parse(_banyakController.text) *
                                  widget.product.price),
                          product: Product(
                              img: widget.product.img,
                              namaProduct: widget.product.namaProduct,
                              toping: widget.product.toping.toList(),
                              price: widget.product.price),
                        ),
                      ),
                    );
                  },
                  child: Text("Pesan"))
            ]),
          ),
        )
      ]),
    );
  }
}
