import 'package:flutter/material.dart';
import './aboutDetail.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage('https://i.pravatar.cc/400?img=60'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 10,
                ),
              ),
            ),
            const Text(
              'Timothy wahyudi santoso',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
            ),
            const Text('160419007'),
            const Text('Teknik informatika'),
            const Text('Genap 2022/2023'),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Adjust this based on your desired alignment
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => aboutID(1)));
                            },
                            child: Text("Full")),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Adjust this based on your desired alignment
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => aboutID(1)));
                            },
                            child: Text("Student 1")),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Adjust this based on your desired alignment
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => aboutID(1)));
                            },
                            child: Text("Student 1")),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Adjust this based on your desired alignment
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => aboutID(1)));
                            },
                            child: Text("Student 1")),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Adjust this based on your desired alignment
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => aboutID(1)));
                            },
                            child: Text("Student 1")),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
