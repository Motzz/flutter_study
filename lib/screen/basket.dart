import 'package:flutter/material.dart';
import './itemBasket.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: Column(children: [
          Text("This is Basket "),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ItemBasket(1, 11)));
              },
              child: Text("Item 1")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ItemBasket(2, 14)));
              },
              child: Text("Item 2"))
        ]));
  }
}
