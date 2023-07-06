import 'package:coffeshop_app/model/product.dart';
import 'package:coffeshop_app/page/menu_item_coffee.dart';
import 'package:flutter/material.dart';

class CoffeMenu extends StatefulWidget {
  const CoffeMenu({super.key});

  @override
  State<CoffeMenu> createState() => _CoffeMenuState();
}

class _CoffeMenuState extends State<CoffeMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffee & Cappucino"),
      ),
      body: ListView(
        children: [
          MenuItemCoffee(
            product: Product(
              img: "assets/img/globalcoffee.jpg",
              namaProduct: "Coffee Latte",
              toping: [],
              price: 14,
            ),
          ),
          MenuItemCoffee(
            product: Product(
              img: "assets/img/capucinno.jpg",
              namaProduct: "Cappucino ",
              toping: [],
              price: 16,
            ),
          )
        ],
      ),
    );
  }
}
