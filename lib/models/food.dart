// food item
class Food {
  String name;
  String description;
  double price;
  double rating;
  String imagePath;
  final FoodCategory category;
  List<Addon> availableAddons;
  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.imagePath,
    required this.category,
    required this.availableAddons,
  });
}

// food category
enum FoodCategory {
  rices,
  noodles,
  foods,
  drinks,
  alcohols,
  bugers,
  cakes,
  khmercakes,
  icecreams,
  seafoods,
  khmerdeserts,
  khmerfoods,
}

// food addon
class Addon {
  String name;
  double price;
  Addon({required this.name, required this.price});
}
