import 'package:coffeshop_app/page/coffe_menu_screen.dart';
import 'package:coffeshop_app/page/milk_menu_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final shadow = [
    BoxShadow(
      color: Color.fromARGB(31, 85, 85, 85),
      offset: const Offset(0, 2.0),
      blurRadius: 1.0,
      spreadRadius: 3.0,
    ), //BoxShadow
    BoxShadow(
      color: Colors.white,
      offset: const Offset(0.0, 0.0),
      blurRadius: 0.0,
      spreadRadius: 0.0,
    ), //BoxShadow
  ];

  @override
  Widget build(BuildContext context) {
    final WidthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  "Coffee Masa Lalu",
                  style: TextStyle(
                      fontFamily: "Dancing Script",
                      fontSize: 40,
                      color: Colors.brown,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Jalan Kenanangan No.34 - Buaya Darat",
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                )
              ],
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 20, top: 30),
              decoration: BoxDecoration(
                boxShadow: shadow,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  // image: new AssetImage("images/foto.jpg"),
                  image: AssetImage("assets/img/coffeshop.jpeg"),
                  // alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(
                    // bottom: BorderSide(color: Colors.brown, width: 2),
                    // top: BorderSide(color: Colors.brown, width: 2),
                    ),
              ),
              child: Row(
                children: [
                  Icon(Icons.menu_book, color: Colors.brown),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Kategori Menu",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown
                        // color: Colors.brown,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return CoffeMenu();
                    }));
                  },
                  child: Container(
                    width: WidthApp * 0.4,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      boxShadow: shadow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 80,
                              child: Text(
                                "Coffee & Cappucino",
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              )),
                          Icon(
                            Icons.coffee,
                            size: 50,
                            color: Colors.white60,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MilkMenu();
                    }));
                  },
                  child: Container(
                    width: WidthApp * 0.4,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      boxShadow: shadow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 80,
                              child: Text(
                                "Milk & Tea",
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              )),
                          Icon(
                            Icons.local_drink,
                            size: 50,
                            color: Colors.white60,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
