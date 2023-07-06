import 'package:coffeshop_app/model/pesanan.dart';
import 'package:flutter/material.dart';
import '../model/product.dart';
import '../page/edit_pesanan.dart';

class DetailPesanan extends StatefulWidget {
  final Product product;
  final Pesanan pesanan;
  const DetailPesanan(
      {super.key, required this.pesanan, required this.product});

  @override
  State<DetailPesanan> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pesanan"),
      ),
      body: Card(
        child: Column(children: [
          ListTile(
            leading: Image.asset("${widget.product.img}"),
            title: Text("${widget.product.namaProduct}"),
            subtitle: Text("Rp. " + "${widget.product.price}"),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(children: [
              Text("Rincian pesanan"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nama Product :"),
                  Text("${widget.product.namaProduct}")
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Toping :"),
                  Row(
                    children: [
                      for (Map item in widget.product.toping)
                        if (item['status'] == true)
                          Text(
                            item['toping'] + ", ",
                            style: TextStyle(),
                          ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Harga :"),
                  Text("Rp. ${widget.product.price}K"),
                  // Text("Rp. ${widget.product.toping[0]['toping']}")
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Banyak :"), Text("${widget.pesanan.banyak} ")],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Bayar :",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Rp. ${widget.pesanan.totalBayar}K",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  tombolHapus(),
                  tombolEdit(),
                ],
              ),
            ]),
          )
        ]),
      ),
    );
  }

  //

  ElevatedButton tombolHapus() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Hapus"),
    );
  }

  ElevatedButton tombolEdit() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditPesanan(
              pesanan: Pesanan(
                  banyak: widget.pesanan.banyak,
                  totalBayar: widget.pesanan.totalBayar),
              product: Product(
                  img: widget.product.img,
                  namaProduct: widget.product.namaProduct,
                  toping: widget.product.toping,
                  price: widget.product.price),
            ),
          ),
        );
      },
      child: Text(
        "Edit",
        style: TextStyle(color: Colors.brown),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
              width: 1, color: Colors.brown), // Atur lebar dan warna border
        ), // Ganti warna latar belakang di sini
      ),
    );
  }
}
