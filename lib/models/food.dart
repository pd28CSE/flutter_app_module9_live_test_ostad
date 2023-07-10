class Food {
  String title;
  String description;
  List<String> ingredients;

  Food({
    required this.title,
    required this.description,
    required this.ingredients,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    List<String> gredients = [];
    for (String item in json['ingredients']) {
      gredients.add(item);
    }

    return Food(
      title: json['title'],
      description: json['description'],
      ingredients: gredients,
    );
  }
}
