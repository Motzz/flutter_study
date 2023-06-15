import 'package:flutter/material.dart';
import '../class/recipe.dart';
import '../screen/resep.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddRecipeState();
  }
}

class _AddRecipeState extends State<AddRecipe> {
  final TextEditingController _recipe_name_cont = TextEditingController();
  final TextEditingController _recipe_desc_cont = TextEditingController();
  final TextEditingController _recipe_photo_cont = TextEditingController();

  late int _charleft;
  // ignore: non_constant_identifier_names
  String? _recipe_category;

  //ini tinggal ketik initstate
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _recipe_name_cont.text = "your food name";
    _recipe_desc_cont.text = "Recipe of ...";
    _recipe_photo_cont.text = "";
    _charleft = 200 - _recipe_desc_cont.text.length;
  }

  Color getButtonColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Recipe'),
        ),
        body: Column(
          children: [
            TextField(
                controller: _recipe_name_cont,
                onChanged: (v) {
                  print(_recipe_name_cont.text);
                  print(v);
                }),
            TextField(
              controller: _recipe_desc_cont,
              onChanged: (v) {
                // print(_recipe_desc_cont.text);
                // print(v);
                setState(() {
                  _charleft = 200 - v.length;
                });
              },
              keyboardType: TextInputType.multiline,
              minLines: 4,
              maxLines: null,
            ),
            Text("$_charleft Character left"),
            TextField(
              controller: _recipe_photo_cont,
              onSubmitted: (v) {
                setState(() {});
              },
            ),
            Image.network(_recipe_photo_cont.text),
            DropdownButton(
                value: _recipe_category,
                items: const [
                  DropdownMenuItem(
                    child: Text("Traditional"),
                    value: "Traditional",
                  ),
                  DropdownMenuItem(
                    child: Text("Japanese"),
                    value: "Japanese",
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _recipe_category = value;
                  });
                }),
            ElevatedButton.icon(
              icon: Icon(Icons.navigate_next),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(5),
                backgroundColor:
                    MaterialStateProperty.resolveWith(getButtonColor),
              ),
              onPressed: () {
                recipes.add(Recipe(
                  id: recipes.length + 1,
                  name: _recipe_name_cont.text,
                  desc: _recipe_desc_cont.text,
                  photo: _recipe_photo_cont.text,
                ));

                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Add Recipe'),
                          content: Text(
                              'Recipe successfully added${recipes.length}'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => [
                                Navigator.pop(context, 'OK'),
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Resep()))
                              ],
                              child: const Text('OK'),
                            ),
                          ],
                        ));
              },
              // child: const Text('SUBMIT'),
              label: const Text('SUBMIT'),
            )
          ],
        ));
  }
}
