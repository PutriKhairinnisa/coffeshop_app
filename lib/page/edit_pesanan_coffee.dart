import 'package:coffeshop_app/model/pesanan.dart';
import 'package:coffeshop_app/model/product.dart';
import 'package:coffeshop_app/page/detail_pesanan.dart';
import 'package:flutter/material.dart';

class EditPesananCoffee extends StatefulWidget {
  final Product product;
  final Pesanan pesanan;
  const EditPesananCoffee(
      {super.key, required this.product, required this.pesanan});

  @override
  State<EditPesananCoffee> createState() => _EditPesananCoffeeState();
}

class _EditPesananCoffeeState extends State<EditPesananCoffee> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final _banyakController =
        TextEditingController(text: widget.pesanan.banyak.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Pesanan"),
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
                        builder: (context) => DetailPesanan(
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
                  child: Text("Simpan"))
            ]),
          ),
        )
      ]),
    );
  }

  Row _checkbox(toping) {
    return Row(
      children: [
        Checkbox(
          value: toping['status'],
          onChanged: (value) {
            setState(() {
              toping['status'] = !toping['status'];
            });
          },
        ),
        Text(toping['toping'])
      ],
    );
  }
}
