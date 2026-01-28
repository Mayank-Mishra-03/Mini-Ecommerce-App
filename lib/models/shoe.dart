class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;

  Shoe({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
  });

  static List<Shoe> getShoeData() {
    List<Shoe> shoeData = [
      Shoe(
        name: "Air Jordane",
        price: "\$150",
        description: "Cool shoe",
        imagePath: "assets/air_jordan1.jpg",
      ),
      Shoe(
        name: "Nike overload",
        price: "\$150",
        description: "Cool shoe",
        imagePath: "assets/shoes2.avif",
      ),
      Shoe(
        name: "Air Jordane",
        price: "\$150",
        description: "Cool shoe",
        imagePath: "assets/shoes3.avif",
      ),
      Shoe(
        name: "Air Jordane",
        price: "\$150",
        description: "Cool shoe",
        imagePath: "assets/shoes3.webp",
      ),
    ];

    return shoeData;
  }
}
