import 'package:flutter/material.dart';
//import class
import '../class/recipe.dart';

import '../screen/addResep.dart';

// ignore: camel_case_types
class Resep extends StatefulWidget {
  const Resep({super.key});

  // final int ids;
  // resep(this.ids);

  @override
  State<StatefulWidget> createState() {
    return _ResepState();
  }
}

class _ResepState extends State<Resep> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (recipes.isEmpty) {
      recipes.add(Recipe(
          id: 1,
          name: 'Sate Sapi Manis',
          photo: 'https://i.pravatar.cc/400?img=3',
          desc:
              'Sate atau satay juga merupakan salah satu makanan khas Indonesia yang sangat populer di kancah internasional. Resep Sate Sapi Manis ini adalah salah satu variasi dari hidangan tradisional sate khas Indonesia yang gurih dan manis pada saat bersamaan.'));
      recipes.add(Recipe(
          id: 2,
          name: 'Semur Solo',
          photo: 'https://i.pravatar.cc/400?img=60',
          desc:
              'Semur Solo rasanya mirip bistik dan sering juga disebut bistik ala Solo. Pilih daging sapi has dalam yang empuk dan teksturnya tidak berotot sehingga daging mudah empuk dan bumbu perendam mudah meresap cepat. Nikmati dengan sepiring selada Selat Solo dan emping goreng.'));
      recipes.add(Recipe(
          id: 3,
          name: 'Sengkel Asam Buncis',
          photo: 'https://i.pravatar.cc/400?img=2',
          desc:
              'Sengkel atau bagian depan atas kaki sapi ini cocok digunakan sebagai bahan dasar sop. Apalagi ditambahkan potongan tomat hijau dan belimbing wuluh yang menyegarkan.'));
      recipes.add(Recipe(
          id: 4,
          name: 'Sengkel Asam Buncis',
          photo: 'https://i.pravatar.cc/400?img=5',
          desc:
              'Sengkel atau bagian depan atas kaki sapi ini cocok digunakan sebagai bahan dasar sop. Apalagi ditambahkan potongan tomat hijau dan belimbing wuluh yang menyegarkan.'));
    }
  }

  Widget build(BuildContext context) {
    List<Widget> widRecipes() {
      List<Widget> temp = [];
      // int i = 0;

      for (int i = 0; i < recipes.length; i++) {
        Widget w = Card(
            margin: EdgeInsets.all(20),
            elevation: 20,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    recipes[i].name + recipes[i].id.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(recipes[i].photo),
                      fit: BoxFit.cover,
                    ),
                    // shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.indigo,
                      width: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    recipes[i].desc,
                    textAlign: TextAlign.justify,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      print(i);
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: const Text('Are you Sure?'),
                                content:
                                    Text("${recipes[i].name}Will be deleted"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => [
                                      Navigator.pop(context, 'CANCEL'),
                                    ],
                                    child: const Text('CANCEL'),
                                  ),
                                  TextButton(
                                    onPressed: () => [
                                      Navigator.pop(context, 'OK'),
                                      // ignore: list_remove_unrelated_type
                                      // recipes.remove(recipes[i]),
                                      setState(() {
                                        recipes.remove(recipes[i]);
                                        // if (recipes[i].id >= 0 &&
                                        //     recipes[i].id < recipes.length) {
                                        //   recipes.removeAt(recipes[i]
                                        //       .id); // Remove the recipe from the list
                                        // }
                                      })
                                    ],
                                    child: const Text('OK'),
                                  ),
                                ],
                              ));
                    },
                    child: Text("Hapus Resep${recipes[i].id}")),
              ],
            ));

        temp.add(w);

        print(w);
      }

      // while (i < recipes.length) {
      //   if (i >= recipes.length) {
      //     break; // Exit the loop if the index is out of range
      //   }
      //   final recipe = recipes[i].id; // Store recipes[i] in a variable
      //   Widget w = Card(
      //       margin: EdgeInsets.all(20),
      //       elevation: 20,
      //       child: Column(
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.all(10),
      //             child: Text(
      //               recipes[i].name + recipes[i].id.toString(),
      //               style: const TextStyle(
      //                   fontWeight: FontWeight.w900, fontSize: 16),
      //               textAlign: TextAlign.justify,
      //             ),
      //           ),
      //           Container(
      //             width: 400,
      //             height: 200,
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                 image: NetworkImage(recipes[i].photo),
      //                 fit: BoxFit.cover,
      //               ),
      //               // shape: BoxShape.circle,
      //               border: Border.all(
      //                 color: Colors.indigo,
      //                 width: 10,
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.all(10),
      //             child: Text(
      //               recipes[i].desc,
      //               textAlign: TextAlign.justify,
      //             ),
      //           ),
      //           ElevatedButton(
      //               onPressed: () {
      //                 // if (i >= recipes.length) {
      //                 //   return; // Exit the function if the index is out of range
      //                 // }
      //                 // ignore: list_remove_unrelated_type

      //                 // ignore: list_remove_unrelated_type
      //                 // recipes.remove(recipes[i].id),
      //                 // ignore: avoid_print
      //                 print(recipe);
      //                 // setState(() {}),
      //                 // showDialog<String>(
      //                 //     context: context,
      //                 //     builder: (BuildContext context) => AlertDialog(
      //                 //           title: const Text('Add Recipe'),
      //                 //           content: Text(recipes[i].id.toString()),
      //                 //           actions: <Widget>[
      //                 //             TextButton(
      //                 //               onPressed: () => [
      //                 //                 Navigator.pop(context, 'OK'),
      //                 //               ],
      //                 //               child: const Text('OK'),
      //                 //             ),
      //                 //           ],
      //                 //         ))
      //               },
      //               child: Text("Hapus Resep${recipes[i].id}")),
      //         ],
      //       ));
      //   temp.add(w);
      //   i++;
      // }
      return temp;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ExampleApp'),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        const Text("Your basket "),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddRecipe()));
            },
            child: Text("Tambah Resep")),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: widRecipes(),
        ),
        const Divider(
          height: 100,
        )
      ])),
    );
  }
}
