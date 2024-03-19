class FoodModel {
  final String name;//burgers
  final String description;// a buger with chesse
  final String imagePath; //list of images.
  final double price; //4.99
  final FoodCategory category; // burgder
 List<Addon> availableAddon; // ["extra chess",sause,extra  patty]

  FoodModel( {
   required this.category,
    required this.availableAddon,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required,
    required this.price,
  });
}
