import 'package:coffeshop_app/model/product.dart';
import 'package:coffeshop_app/page/menu_item.dart';
import 'package:flutter/material.dart';

class MilkMenu extends StatefulWidget {
  const MilkMenu({super.key});

  @override
  State<MilkMenu> createState() => _MilkMenuState();
}

class _MilkMenuState extends State<MilkMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Milk & Tea"),
      ),
      body: ListView(
        children: [
          MenuItem(
            product: Product(
              img: "assets/img/authentikTT.jpeg",
              namaProduct: "Authentic thai tea",
              toping: [
                {"status": false, "toping": "Pearl"},
                {"status": false, "toping": "Puding"},
                {"status": false, "toping": "Grass Jelly"},
                {"status": false, "toping": "Aloe Vera"},
                
              ],
              price: 10,
            ),
          ),
          MenuItem(
            product: Product(
              img: "assets/img/BrownSugar.jpeg",
              namaProduct: "Brown sugar fresh milk",
              toping: [
                {"status": false, "toping": "Pearl"},
                {"status": false, "toping": "Puding"},
                {"status": false, "toping": "Grass Jelly"},
                {"status": false, "toping": "Aloe Vera"},
                
              ],
              price: 15,
            ),
          ),
          MenuItem(
            product: Product(
              img: "assets/img/CaramelMilk.jpeg",
              namaProduct: "Caramel milk tea",
              toping: [
                {"status": false, "toping": "Pearl"},
                {"status": false, "toping": "Puding"},
                {"status": false, "toping": "Grass Jelly"},
                {"status": false, "toping": "Aloe Vera"},
                
              ],
              price: 15,
            ),
          ),
          MenuItem(
            product: Product(
              img: "assets/img/HazelnutChoko.jpeg",
              namaProduct: "Huzelnut chocolate milk tea",
              toping: [
                {"status": false, "toping": "Pearl"},
                {"status": false, "toping": "Puding"},
                {"status": false, "toping": "Grass Jelly"},
                {"status": false, "toping": "Aloe Vera"},
                
              ],
              price: 15,
            ),
          ),
          MenuItem(
            product: Product(
              img: "assets/img/MatchaMilk.jpeg",
              namaProduct: "Matcha milk tea",
              toping: [
                {"status": false, "toping": "Pearl"},
                {"status": false, "toping": "Puding"},
                {"status": false, "toping": "Grass Jelly"},
                {"status": false, "toping": "Aloe Vera"},
                
              ],
              price: 15,
            ),
          ),
          MenuItem(
            product: Product(
              img: "assets/img/BrownSugarMilk.jpeg",
              namaProduct: "Brown sugar milk tea",
              toping: [
                {"status": false, "toping": "Pearl"},
                {"status": false, "toping": "Puding"},
                {"status": false, "toping": "Grass Jelly"},
                {"status": false, "toping": "Aloe Vera"},
                
              ],
              price: 15,
            ),
          ),
        ],
      ),
    );
  }
}
