import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  List<Widget> cats() {
    List<Widget> temp = [];

    int i = 0;

    while (i < 15) {
      Widget w = Image.network(
          "https://placekitten.com/120/120?image=" + i.toString());

      temp.add(w);

      i++;
    }

    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Search'),
      // ),
      body: Center(
          child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text("data"),
          Text("data"),
          Row(
            children: [
              Text("data"),
              Text("data"),
            ],
          ),
          Row(
            children: [
              Image.network('https://i.pravatar.cc/100?img=1'),
              Image.network('https://i.pravatar.cc/100?img=2'),
              Image.network('https://i.pravatar.cc/100?img=3'),
            ],
          ),
          Divider(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network('https://i.pravatar.cc/100?img=4'),
              Image.network('https://i.pravatar.cc/100?img=5'),
              Image.network('https://i.pravatar.cc/100?img=6'),
              Image.network('https://i.pravatar.cc/100?img=7'),
              Image.network('https://i.pravatar.cc/100?img=8'),
              Image.network('https://i.pravatar.cc/100?img=9'),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
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
          Container(
            height: 500,
            child: GridView.count(crossAxisCount: 3, children: cats()),
          ),
        ],
      )),
    );
  }
}

// class Search extends StatelessWidget {
//   const Search({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Search'),
//       // ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text("data"),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text("data"),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text("data"),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text("data"),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=1'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=2'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=3'),
//                 ),
//               ],
//             ),
//             Divider(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=4'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=5'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=6'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=7'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=8'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image.network('https://i.pravatar.cc/100?img=9'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
