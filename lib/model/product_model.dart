class Product {
  String name;
  String description;
  String price;
  double rating;
  String imgPath;
  int weight;
  String dimensions;
  String id;
  int quantitiy;

  Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.rating,
      required this.imgPath,
      required this.weight,
      required this.dimensions,
      required this.id,
      required this.quantitiy});

  factory Product.randomCreate({
    required String name,
    required String description,
    required String imgPath,
    required int weight,
    required String id,
    required int quantitiy,
  }) {
    return Product(
        name: name,
        id: id,
        description: description,
        price: "3999 ₺",
        rating: 3.6,
        imgPath: imgPath,
        quantitiy: quantitiy,
        weight: weight,
        dimensions: "30 x 26 x 32");
  }
}
