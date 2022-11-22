import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/model/product_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Product> products = [];
  int selectedIndex = 0;
  final _random = Random();
  //SelecktPage selectPage = SelecktPage.homePage;
  List<Map> randomArmChairList = [
    {"color": "Yellow", "imgPathName": "armchair1", "weight": 60},
    {"color": "Purple", "imgPathName": "armchair2", "weight": 80}
  ];

  List<Product> getProducts() {
    products.clear();
    for (int i = 0; i <= 12; i++) {
      Map element =
          randomArmChairList[_random.nextInt(randomArmChairList.length)];
      Product product = Product.randomCreate(
          name: "Arm Chair ${element["color"]}",
          description: "description",
          imgPath: "assets/images/${element["imgPathName"]}.png",
          weight: element["weight"]);

      products.add(product);
    }

    return products;
  }

  changeSelecktPage(int index) {
    if (index != selectedIndex) {
      selectedIndex = index;
    }
    notifyListeners();
  }
}
