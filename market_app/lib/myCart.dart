import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "My Cart",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red[400]),
          ),
        ),
        ListTile(
          title: Text("${product1.name}"),
          subtitle: Text("${product1.stock} piece x ${product1.price} USD "),
          trailing: Text("${product1.stock * product1.price}  USD"),
        ),
        ListTile(
          title: Text("${product2.name}"),
          subtitle: Text("${product2.stock} piece x ${product2.price} USD "),
          trailing: Text("${product2.stock * product2.price}  USD"),
        ),
        ListTile(
          title: Text("${product3.name}"),
          subtitle: Text("${product3.stock} piece x ${product3.price} USD "),
          trailing: Text("${product3.stock * product3.price}  USD"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0, top: 20, bottom: 20),
              child: Column(
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[400],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "21.1 USD",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 45,
          decoration: BoxDecoration(
            color: Colors.red[400],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Proceed to Checkout",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Product {
  String name;
  double price;
  int stock;

  Product(this.name, this.price, this.stock);
}

Product product1 = Product("wafer", 2.0, 3);
Product product2 = Product("juice", 3.15, 2);
Product product3 = Product("muffin", 1.76, 5);
