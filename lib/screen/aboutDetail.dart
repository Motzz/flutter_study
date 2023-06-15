import 'package:flutter/material.dart';

class aboutID extends StatefulWidget {
  final int ids;
  aboutID(this.ids);
  @override
  State<StatefulWidget> createState() {
    return _StudentIDState();
  }
}

class _StudentIDState extends State<aboutID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExampleApp'),
      ),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .start, // Adjust this based on your desired alignment
                children: [
                  Image.network('https://i.pravatar.cc/100?img=4'),
                  Image.network('https://i.pravatar.cc/100?img=5'),
                  Image.network('https://i.pravatar.cc/100?img=6'),
                  Image.network('https://i.pravatar.cc/100?img=7'),
                  Image.network('https://i.pravatar.cc/100?img=8'),
                  Image.network('https://i.pravatar.cc/100?img=9'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
