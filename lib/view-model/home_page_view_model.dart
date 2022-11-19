import 'package:flutter/cupertino.dart';
import 'package:shop_app/model/product_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Product> products = [];

  List<Product> getProducts() {
    products.clear();
    for (int i = 0; i <= 4; i++) {
      String armChairColor = i % 2 == 0 ? "Yellow":"Purple";
      Product product = Product.randomCreate(
          name: "Arm Chair $armChairColor",
          description: "description",
          imgPath: "assets/images/armchair1.png");
      
      products.add(product);
    }

    return products;
  }
}
