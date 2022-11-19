import 'package:flutter/cupertino.dart';

class Product {
  String name;
  String description;
  String price;
  int stars;
  String imgPath;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.stars,
    required this.imgPath,
  });

  factory Product.randomCreate(
      {required String name,
      required String description,
      required String imgPath}) {
    return Product(
        name: name,
        description: description,
        price: "3999",
        stars: 4,
        imgPath: imgPath);
  }
}
