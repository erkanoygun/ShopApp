class Product {
  String name;
  String description;
  String price;
  int stars;
  String imgPath;
  int weight;
  String dimensions;

  Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.stars,
      required this.imgPath,
      required this.weight,
      required this.dimensions});

  factory Product.randomCreate({
    required String name,
    required String description,
    required String imgPath,
    required int weight,
  }) {
    return Product(
        name: name,
        description: description,
        price: "3999 ₺",
        stars: 4,
        imgPath: imgPath,
        weight: weight,
        dimensions: "30 x 26 x 32");
  }
}
