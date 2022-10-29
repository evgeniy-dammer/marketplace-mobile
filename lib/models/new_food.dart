class NewFood {
  const NewFood({
    required this.image,
    required this.name,
    required this.time,
  });

  final String image;
  final String name;
  final int time;

  static List<NewFood> getNewFoods() {
    return const [
      NewFood(
          image: 'assets/images/food5.jpg',
          name: 'Murugan Idli Shop',
          time: 42),
      NewFood(
          image: 'assets/images/food4.jpg',
          name: 'Thalappakati Biryani Hotel',
          time: 32),
      NewFood(
          image: 'assets/images/food1.jpg',
          name: 'Sangeetha',
          time: 26),
      NewFood(
          image: 'assets/images/food2.jpg',
          name: 'Hotel Chennai',
          time: 38),
      NewFood(
          image: 'assets/images/food3.jpg',
          name: 'Shri Balaajee',
          time: 53),
      NewFood(
          image: 'assets/images/food4.jpg',
          name: 'Namma Veedu Vasantha',
          time: 22),
      NewFood(
          image: 'assets/images/food6.jpg',
          name: 'SK Parota Stall',
          time: 13),
      NewFood(
          image: 'assets/images/food7.jpg',
          name: 'Aasife Biryani',
          time: 31),
      NewFood(
          image: 'assets/images/food8.jpg',
          name: 'Jesus Fast Food',
          time: 44),
      NewFood(
          image: 'assets/images/food9.jpg',
          name: 'Ananda Bhavan',
          time: 55),
    ];
  }
}
