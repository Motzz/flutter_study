class Recipe {
  int id;
  String name;
  String photo;
  String desc;
  // int kategoriID;

  Recipe({
    required this.id,
    required this.name,
    required this.photo,
    required this.desc,
    // required this.kategoriID,
  });
}

var recipes = <Recipe>[];
