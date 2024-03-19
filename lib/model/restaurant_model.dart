import 'food_model.dart';

class RestaurantModel {
  final List<FoodModel> _menu = [
    FoodModel(category: FoodCategory.burgers,
        availableAddon: [
          Addon(name: "Extra Cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avacado", price: 2.99),
        ],
        name: "Classic CheeseBurger",
        description: "A juicy beef patty, melted cheese, and fresh toppings nestled between toasted buns.",
        imagePath: "assets/burger/burger_1.jpg",
        price: 4.99),
    FoodModel(
        category: FoodCategory.burgers,
        availableAddon: [
          Addon(name: "Extra Cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        name: "Double Bacon Cheeseburger",
        description: "Two juicy beef patties, crispy bacon, melted cheese, and fresh toppings between toasted buns.",
        imagePath: "assets/burger/burger_2.jpg",
        price: 7.99
    ),
    FoodModel(
        category: FoodCategory.burgers,
        availableAddon: [
          Addon(name: "Extra Cheese", price: 0.99),
          Addon(name: "Grilled Onions", price: 0.79),
          Addon(name: "Mushrooms", price: 1.49),
        ],
        name: "Mushroom Swiss Burger",
        description: "A succulent beef patty topped with melted Swiss cheese, sautéed mushrooms, and grilled onions on a toasted bun.",
        imagePath: "assets/burger/burger_3.jpg",
        price: 6.49
    ),


    // Salads
    FoodModel(
        category: FoodCategory.salads,
        availableAddon: [
          Addon(name: "Grilled Chicken", price: 2.49),
          Addon(name: "Avocado", price: 1.99),
          Addon(name: "Balsamic Vinaigrette", price: 0.79),
        ],
        name: "Classic Caesar Salad",
        description: "Crisp romaine lettuce, Parmesan cheese, and crunchy croutons tossed in creamy Caesar dressing.",
        imagePath: "assets/salad/salad_1.jpg",
        price: 5.99
    ),
    FoodModel(
        category: FoodCategory.salads,
        availableAddon: [
          Addon(name: "Grilled Shrimp", price: 3.99),
          Addon(name: "Feta Cheese", price: 1.49),
          Addon(name: "Greek Dressing", price: 0.79),
        ],
        name: "Greek Salad",
        description: "Fresh mixed greens, tomatoes, cucumbers, olives, and onions topped with tangy feta cheese and Greek dressing.",
        imagePath: "assets/salad/salad_2.jpg",
        price: 6.49
    ),
    FoodModel(
        category: FoodCategory.salads,
        availableAddon: [
          Addon(name: "Grilled Salmon", price: 4.99),
          Addon(name: "Cranberries", price: 1.29),
          Addon(name: "Walnuts", price: 1.49),
        ],
        name: "Spinach and Cranberry Salad",
        description: "Fresh spinach leaves topped with grilled salmon, sweet cranberries, crunchy walnuts, and a light vinaigrette dressing.",
        imagePath: "assets/salad/salad_3.jpg",
        price: 7.49
    ),

    //Sides
    FoodModel(
        category: FoodCategory.sides,
        availableAddon: [
          Addon(name: "Garlic Breadsticks", price: 2.99),
          Addon(name: "Marinara Sauce", price: 0.79),
          Addon(name: "Parmesan Cheese", price: 1.49),
        ],
        name: "Cheesy Garlic Bread",
        description: "Warm and crispy garlic breadsticks topped with melted cheese and served with marinara sauce for dipping.",
        imagePath: "assets/sides/side_1.jpg",
        price: 5.99
    ),
    FoodModel(
        category: FoodCategory.sides,
        availableAddon: [
          Addon(name: "Garlic Parmesan Fries", price: 2.49),
          Addon(name: "Sweet Potato Fries", price: 2.99),
          Addon(name: "Truffle Aioli", price: 0.99),
        ],
        name: "Loaded Fries",
        description: "Golden crispy fries topped with melted cheese, crispy bacon bits, and green onions, served with a side of ranch dressing.",
        imagePath: "assets/sides/sides_2.jpg",
        price: 4.99
    ),
    FoodModel(
        category: FoodCategory.sides,
        availableAddon: [
          Addon(name: "Onion Rings", price: 3.49),
          Addon(name: "Chipotle Mayo", price: 0.79),
          Addon(name: "Jalapeno Poppers", price: 4.99),
        ],
        name: "Appetizer Platter",
        description: "A savory selection of crispy onion rings, spicy jalapeno poppers, and golden fried mozzarella sticks, served with chipotle mayo.",
        imagePath: "assets/sides/sides_3.jpg",
        price: 8.99
    ),


    //Drinks
    FoodModel(
        category: FoodCategory.drinks,
        availableAddon: [
          Addon(name: "Whipped Cream", price: 0.49),
          Addon(name: "Chocolate Syrup", price: 0.79),
          Addon(name: "Caramel Drizzle", price: 0.79),
        ],
        name: "Iced Caramel Macchiato",
        description: "Smooth espresso blended with caramel syrup, milk, and ice, topped with whipped cream and caramel drizzle.",
        imagePath: "assets/drink/drink_1.jpg",
        price: 4.49
    ),
    FoodModel(
        category: FoodCategory.drinks,
        availableAddon: [
          Addon(name: "Boba Pearls", price: 0.99),
          Addon(name: "Mango Popping Balls", price: 1.29),
          Addon(name: "Lychee Jelly", price: 0.79),
        ],
        name: "Mango Bubble Tea",
        description: "Refreshing mango-flavored bubble tea with chewy boba pearls and a choice of mango popping balls or lychee jelly.",
        imagePath: "assets/drink/drink_2.jpg",
        price: 4.99
    ),
    FoodModel(
        category: FoodCategory.drinks,
        availableAddon: [
          Addon(name: "Vanilla Syrup", price: 0.49),
          Addon(name: "Hazelnut Syrup", price: 0.79),
          Addon(name: "Cinnamon Powder", price: 0.59),
        ],
        name: "Iced Vanilla Latte",
        description: "Rich espresso mixed with creamy milk and vanilla syrup, poured over ice and sprinkled with a hint of cinnamon.",
        imagePath: "assets/drink/drink_3.jpg",
        price: 4.29
    ),


// Desserts
    FoodModel(
        category: FoodCategory.desserts,
        availableAddon: [
          Addon(name: "Vanilla Ice Cream", price: 1.49),
          Addon(name: "Chocolate Sauce", price: 0.79),
          Addon(name: "Chopped Nuts", price: 0.99),
        ],
        name: "Classic Chocolate Brownie",
        description: "Decadent chocolate brownie served warm with a scoop of vanilla ice cream, drizzled with chocolate sauce and sprinkled with chopped nuts.",
        imagePath: "assets/dessert/dessert_1.jpg",
        price: 5.99
    ),
    FoodModel(
        category: FoodCategory.desserts,
        availableAddon: [
          Addon(name: "Strawberry Compote", price: 0.79),
          Addon(name: "Whipped Cream", price: 0.49),
          Addon(name: "Vanilla Bean Gelato", price: 2.49),
        ],
        name: "Classic Italian Tiramisu",
        description: "Layers of espresso-soaked ladyfingers and creamy mascarpone cheese, dusted with cocoa powder and served with a dollop of whipped cream.",
        imagePath: "assets/dessert/dessert_2.jpg",
        price: 6.49
    ),
    FoodModel(
        category: FoodCategory.desserts,
        availableAddon: [
          Addon(name: "Caramel Drizzle", price: 0.79),
          Addon(name: "Toasted Coconut Flakes", price: 0.99),
          Addon(name: "Crushed Oreos", price: 0.69),
        ],
        name: "Coconut Caramel Cheesecake",
        description: "Creamy coconut cheesecake on a buttery graham cracker crust, topped with caramel drizzle, toasted coconut flakes, and crushed Oreos.",
        imagePath: "assets/dessert/dessert_3.jpg",
        price: 7.49
    ),


  ];
  List<FoodModel>  get menu =>_menu;
}