import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/model/product_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Product> products = [];
  List<String> favoritesList = [];
  List<String> cartList = [];
  int selectedIndex = 0;
  final _random = Random();
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
        name: "${element["color"]} Arm Chair",
        description:
            "${element["color"]} Arm Chair for home. Very comfortable.",
        imgPath: "assets/images/${element["imgPathName"]}.png",
        weight: element["weight"],
        id: "fakeId_$i",
      );

      products.add(product);
    }

    return products;
  }

  void changeSelecktPage(int index) {
    if (index != selectedIndex) {
      selectedIndex = index;
    }
    notifyListeners();
  }

  void addFavoritesList(String id) {
    if (favoritesList.contains(id)) {
      favoritesList.remove(id);
    } else {
      favoritesList.add(id);
    }

    notifyListeners();
  }

  void addCartList(String id) {
    //bool isCartList = cartList.contains(id);
    cartList.add(id);
    notifyListeners();
  }
}
