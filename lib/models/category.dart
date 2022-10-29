class Category {
  const Category({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<Category> getCategories() {
    return const [
      Category(
        image: 'assets/icons/coffee.png',
        name: 'Cold\nBeverages',
      ),
      Category(
        image: 'assets/icons/natural-food.png',
        name: 'Veg only',
      ),
      Category(
        image: 'assets/icons/only-on-swiggy.png',
        name: 'Only on\nSwiggy',
      ),
      Category(
        image: 'assets/icons/offer.png',
        name: 'Offers',
      ),
      Category(
        image: 'assets/icons/food.png',
        name: 'Meals',
      ),
      Category(
        image: 'assets/icons/milkshake.png',
        name: 'Milkshakes',
      ),
      Category(
        image: 'assets/icons/kawaii-sushi.png',
        name: 'Kawaii\n Sushi',
      ),
      Category(
        image: 'assets/icons/bread.png',
        name: 'Bread',
      ),
      Category(
        image: 'assets/icons/only-on-swiggy.png',
        name: 'Only on\nSwiggy',
      ),
      Category(
        image: 'assets/icons/food.png',
        name: 'Meals',
      ),
      Category(
        image: 'assets/icons/natural-food.png',
        name: 'Veg only',
      ),
      Category(
        image: 'assets/icons/coffee.png',
        name: 'Cold\nBeverages',
      ),
      Category(
        image: 'assets/icons/kawaii-sushi.png',
        name: 'Kawaii\n Sushi',
      ),
      Category(
        image: 'assets/icons/bread.png',
        name: 'Bread',
      ),
      Category(
        image: 'assets/icons/food.png',
        name: 'Meals',
      ),
      Category(
        image: 'assets/icons/milkshake.png',
        name: 'Milkshakes',
      ),
      Category(
        image: 'assets/icons/coffee.png',
        name: 'Cold\nBeverages',
      ),
      Category(
        image: 'assets/icons/natural-food.png',
        name: 'Veg only',
      )
    ];
  }
}
