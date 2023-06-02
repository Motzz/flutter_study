import 'package:flutter/material.dart';
import './studentDetail.dart';

class Student extends StatelessWidget {
  const Student({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: Column(children: [
          Text("This is Student "),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => studentID(1)));
              },
              child: Text("Student 1")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => studentID(2)));
              },
              child: Text("Student 2"))
        ]));
  }
}
