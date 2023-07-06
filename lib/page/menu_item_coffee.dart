import 'package:coffeshop_app/model/product.dart';
import 'package:coffeshop_app/page/form_pesanan_coffee.dart';
import 'package:flutter/material.dart';

class MenuItemCoffee extends StatelessWidget {
  final Product product;
  const MenuItemCoffee({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final WidthApp = MediaQuery.of(context).size.width;
    final widthImg = WidthApp * 0.4;
    return Card(
      child: Container(
        child: Row(
          children: [
            Container(
              width: widthImg,
              height: 120,
              //
              child: Image(
                image: AssetImage("${product.img}"),
                // image: NetworkImage("${product.img}"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${product.namaProduct}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Dancing Script',
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${product.price}.K",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FormPesananCoffee(product: product),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Order",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.add_shopping_cart)
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
