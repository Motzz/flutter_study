import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      body: Center(
          child: Column(
        children: [
          Container(
            color: Colors.yellow,
            alignment: Alignment.center,
            width: 200.0,
            height: 200.0,
            child: AspectRatio(
              aspectRatio: 4 / 1,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Container(
            color: Colors.cyan,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            height: 300,
            width: 300,
            child: Card(child: Text('Hello World!')),
          ),
          Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.pravatar.cc/400?img=60'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.indigo,
                width: 10,
              ),
            ),
          )
        ],
      )),
    );
  }
}
