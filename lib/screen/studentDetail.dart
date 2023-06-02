import 'package:flutter/material.dart';

class studentID extends StatefulWidget {
  final int ids;
  studentID(this.ids);
  @override
  State<StatefulWidget> createState() {
    return _StudentIDState();
  }
}

class _StudentIDState extends State<studentID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExampleApp'),
      ),
      body: Container(
        child: Container(
          child: Image.network(
            'https://i.pravatar.cc/300?img=${widget.ids}',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// class studentID extends StatefulWidget {
//   final int id;
//   studentID(this.id);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Item Student'),
//       ),
//       body: Container(
//         color: Colors.cyan,
//         margin: EdgeInsets.all(10),
//         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//         height: 300,
//         width: 300,
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage('https://i.pravatar.cc/300?img=1'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
